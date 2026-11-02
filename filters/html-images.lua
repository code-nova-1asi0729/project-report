-- Convierte imágenes escritas en HTML (como las usa GitHub para centrarlas):
--
--   <p align="center">
--    <img src="assets/x.png" width="80%" alt="Texto">
--   </p>
--
-- en imágenes de Pandoc centradas. Sin este filtro, Pandoc descarta el HTML
-- crudo al generar LaTeX y la imagen no aparece en el PDF. No agrega caption:
-- el texto de "alt" se usa solo como texto alternativo.

local function attr(tag, name)
  return tag:match(name .. '%s*=%s*"([^"]*)"') or tag:match(name .. "%s*=%s*'([^']*)'")
end

local function html_image(inline)
  if inline.t ~= "RawInline" or inline.format ~= "html" then return nil end
  if not inline.text:match("^%s*<img%s") then return nil end
  local src = attr(inline.text, "src")
  if not src then return nil end
  local attributes = {}
  local width = attr(inline.text, "width")
  if width then attributes.width = width:match("%%$") and width or (width .. "px") end
  local alt = attr(inline.text, "alt") or ""
  return pandoc.Image({}, src, "", pandoc.Attr("", {}, attributes)), alt
end

-- Un párrafo que solo contiene <img>: lo convierte en imagen.
local function convert_plain(block)
  if (block.t ~= "Plain" and block.t ~= "Para") then return nil end
  local out = {}
  for _, inl in ipairs(block.content) do
    local img = html_image(inl)
    if img then out[#out + 1] = img
    elseif inl.t ~= "Space" and inl.t ~= "SoftBreak" then return nil end -- hay texto: no tocar
  end
  if #out > 0 then return pandoc.Plain(out) end
  return nil
end

local function is_raw(block, pattern)
  return block and block.t == "RawBlock" and block.format == "html" and block.text:match(pattern)
end

function Blocks(blocks)
  local result = pandoc.List()
  local i = 1
  while i <= #blocks do
    local b = blocks[i]
    -- <p align="center"> + <img> + </p>  ->  imagen centrada
    if is_raw(b, '^%s*<p%s+align%s*=%s*"center"%s*>%s*$') and is_raw(blocks[i + 2], "^%s*</p>%s*$") then
      local img = convert_plain(blocks[i + 1])
      if img then
        if FORMAT:match("latex") then
          result:insert(pandoc.RawBlock("latex", "\\begin{center}"))
          result:insert(img)
          result:insert(pandoc.RawBlock("latex", "\\end{center}"))
        else
          result:insert(img)
        end
        i = i + 3
        goto continue
      end
    end
    -- <img> suelto (sin <p align="center">)
    do
      local img = convert_plain(b)
      result:insert(img or b)
    end
    i = i + 1
    ::continue::
  end
  return result
end

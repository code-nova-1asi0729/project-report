-- Convierte comentarios HTML con la forma  <!-- latex: ... -->  en LaTeX crudo.
-- GitHub y los editores ocultan los comentarios HTML, así el Markdown se ve
-- limpio, y Pandoc los convierte en instrucciones de diseño al generar el PDF.
function RawBlock(el)
  if el.format == "html" then
    local body = el.text:match("^%s*<!%-%-%s*latex:%s*(.-)%s*%-%->%s*$")
    if body then
      return pandoc.RawBlock("latex", body)
    end
  end
end

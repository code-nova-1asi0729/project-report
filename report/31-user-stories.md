---
title: "User Stories"
author: "[COMPLETAR: autor principal]"
---

<!-- Fuente en el AV1: pp. 56-68. Migrar el contenido debajo de cada título. -->

## 3.1. User Stories

|Story ID|Título|Descripción|Criterios de Aceptación|Epic ID|
|:---|:---|:---|:---|:---|
|US01|Registro de administrador con validación de edificio|Como administrador, quiero registrarme en CodeNova asociando mi edificio, para habilitar el monitoreo de mis equipos desde el primer día.|Escenario (Éxito):
Dado que el administrador completa los datos del edificio y su cuenta, Cuando presiona 'Crear cuenta', Entonces el sistema crea el edificio y envía un correo de confirmación.
Escenario (Fracaso):
Dado que el correo ingresado ya está registrado, Cuando intenta crear la cuenta, Entonces el sistema muestra 'Este correo ya tiene una cuenta asociada'.
|EPCN01|
|US02|Inicio de sesión por rol|Como usuario registrado (administrador, residente o empresa de mantenimiento), quiero iniciar sesión con mi correo y contraseña, para acceder a las funciones de mi rol.|Escenario (Éxito):
Dado que el usuario ingresa credenciales correctas, Cuando presiona 'Iniciar sesión', Entonces el sistema lo redirige al dashboard de su rol.
Escenario (Fracaso):
Dado que el usuario ingresa una contraseña incorrecta, Cuando presiona 'Iniciar sesión', Entonces el sistema muestra 'Correo o contraseña incorrectos'.
|EPCN01|

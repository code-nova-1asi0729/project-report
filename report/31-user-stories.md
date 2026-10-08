---
title: "User Stories"
author: "[COMPLETAR: autor principal]"
---

<!-- Fuente en el AV1: pp. 56-68. Migrar el contenido debajo de cada título. -->

## 3.1. User Stories

|Story ID|Título|Descripción|Criterios de Aceptación|Epic ID|
|:---|:---|:---|:---|:---|
|US01|Registro de administrador con validación de edificio|Como administrador, quiero registrarme en CodeNova asociando mi edificio, para habilitar el monitoreo de mis equipos desde el primer día.|Escenario (Éxito):Dado que el administrador completa los datos del edificio y su cuenta, Cuando presiona 'Crear cuenta', Entonces el sistema crea el edificio y envía un correo de confirmación. Escenario (Fracaso):Dado que el correo ingresado ya está registrado, Cuando intenta crear la cuenta, Entonces el sistema muestra 'Este correo ya tiene una cuenta asociada'.|EPCN01|
|US02|Inicio de sesión por rol|Como usuario registrado (administrador, residente o empresa de mantenimiento), quiero iniciar sesión con mi correo y contraseña, para acceder a las funciones de mi rol.|Escenario (Éxito):Dado que el usuario ingresa credenciales correctas, Cuando presiona 'Iniciar sesión', Entonces el sistema lo redirige al dashboard de su rol. Escenario (Fracaso):Dado que el usuario ingresa una contraseña incorrecta, Cuando presiona 'Iniciar sesión', Entonces el sistema muestra 'Correo o contraseña incorrectos'.|EPCN01|
|US03|Recuperación de contraseña|Como usuario registrado, quiero recuperar mi contraseña olvidada, para volver a acceder a mi cuenta.|Escenario (Éxito): Dado que el usuario ingresa su correo registrado, Cuando presiona 'Enviar enlace', Entonces el sistema envía un correo de recuperación válido por 24 horas. Escenario (Fracaso): Dado que el usuario usa un enlace de recuperación vencido, Cuando intenta acceder a él, Entonces el sistema muestra 'Este enlace ha expirado. Solicita uno nuevo'.|EPCN01|
|US04|Registro de residente vinculado a su unidad|Como residente, quiero registrarme indicando mi edificio y número de departamento, para reportar incidentes y hacer seguimiento a mis solicitudes.|Escenario (Éxito): Dado que el residente ingresa un código de edificio válido y un número de unidad existente, Cuando presiona 'Registrarme', Entonces el sistema crea la cuenta y notifica al administrador. Escenario (Fracaso): Dado que el residente ingresa un código de edificio inexistente, Cuando intenta registrarse, Entonces el sistema muestra 'Código de edificio no válido'.|EPCN01|
|US05|Registro de empresa de mantenimiento|Como empresa de mantenimiento, quiero registrarme y asociarme a uno o más edificios, para recibir alertas y gestionar mis visitas desde la plataforma.|Escenario (Éxito): Dado que la empresa completa el formulario de registro con su RUC y edificios asignados, Cuando presiona 'Registrar empresa', Entonces el sistema crea la cuenta y la vincula a los edificios indicados. Escenario (Fracaso): Dado que el RUC ingresado no tiene el formato correcto, Cuando intenta registrarse, Entonces el sistema muestra 'Ingresa un RUC válido de 11 dígitos'.|EPCN01|

# CRUD API - Ruby on Rails

## Descripción

Este proyecto es una API CRUD  (Crear, Leer, Actualizar, Eliminar) 
construida con Ruby on Rails.  La API permite  gestionar clientes, 
proporcionando  operaciones   para  crear,   leer,   actualizar  y 
eliminar registros de clientes.
..................................................................
## Tecnologías Utilizadas

- Ruby on Rails 7.2.1
- SQLite para almacenamiento de datos (base de datos por defecto)
- Puma como servidor web
..................................................................
## Endpoints
..................................................................
### Clientes

- **GET /clients**
  - Obtiene una lista de todos los clientes.

- **GET /clients/:id**
  - Obtiene un cliente específico por su ID.

- **POST /clients**
  - Crea un nuevo cliente.  
  **Cuerpo de la solicitud** (JSON):
  ```json
  {
    "client": {
      "user_name": "example",
      "password": "secret",
      "email": "example@example.com"
    }
  }
..................................................................

## Accede a la API:

Abre tu navegador o Postman y realiza solicitudes a http://localhost:3000/clients.
..................................................................


# MIT License
## Copyright (c) [2024] [Y0i7] [https://github.com/Y0i7]
Se concede permiso, de forma gratuita, a cualquier persona que obtenga una copia de este software y de los archivos de documentación asociados (el "Software"), para utilizar el Software sin restricciones, incluyendo, sin limitación, los derechos a usar, copiar, modificar, fusionar, publicar, distribuir, sublicenciar y/o vender copias del Software, y a permitir a las personas a quienes se les proporcione el Software a hacerlo, sujeto a las siguientes condiciones:

...

El software se proporciona "tal cual", sin garantía de ningún tipo, expresa o implícita, incluyendo pero no limitado a las garantías de comerciabilidad, idoneidad para un propósito particular y no infracción. En ningún caso los autores o titulares de derechos de autor serán responsables de cualquier reclamación, daños u otras responsabilidades, ya sea en una acción de contrato, agravio o de otro tipo, que surja de, o en conexión con, el software o el uso u otros tratos en el software.

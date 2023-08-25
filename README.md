# Proyecto PostgreSQL con Docker

Este proyecto proporciona una solución Dockerizada para desplegar una base de datos PostgreSQL con características adicionales como backups automáticos y almacenamiento en AWS S3.

## Estructura del proyecto

- `docker-compose.yml`: Define y configura los servicios del proyecto.
- `control/`: Carpeta que contiene scripts y herramientas auxiliares.
  - `backup.sh`: Script para realizar backups de la base de datos y guardarlos localmente.
- `.env`: Archivo de configuración con variables de entorno. (No incluido en el repositorio por razones de seguridad)

## Características

- **PostgreSQL**: Despliega una instancia de PostgreSQL optimizada y segura.
- **Backups automáticos**: Realiza backups periódicos de la base de datos.
- **Almacenamiento en AWS S3**: Los backups se almacenan automáticamente en un bucket de AWS S3.

## Cómo usar

1. Clona este repositorio:
   ```bash
   git clone [URL del repositorio]
   cd [nombre del directorio]

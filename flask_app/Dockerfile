# Usar una imagen base de Python
FROM python:3.12-slim

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Instalar dependencias del sistema para PostgreSQL y otras herramientas
RUN apt-get update && apt-get install -y \
    libpq-dev build-essential && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Instalar Poetry
RUN pip install --no-cache-dir poetry

# Copiar los archivos de configuración de Poetry
COPY poetry.lock pyproject.toml ./

# Instalar las dependencias del proyecto con Poetry
RUN poetry config virtualenvs.create false && \
    poetry install --no-dev --no-interaction --no-ansi

# Asegúrate de que todos los directorios necesarios estén en el PYTHONPATH
ENV PYTHONPATH="${PYTHONPATH}:/app"

# Copiar el código fuente
COPY . .

# Exponer el puerto en el que corre Flask
EXPOSE 5000

# Comando por defecto para ejecutar la aplicación
CMD ["poetry", "run", "flask", "--app", "app.web.app", "run", "--host=0.0.0.0", "--port=5000"]


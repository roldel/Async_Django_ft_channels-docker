# Linux
docker run -it --name django_async -p 8000:8000 -v "$(pwd)":/target python:alpine sh

# Windows
docker run -it --name django_async -p 8000:8000 -v %cd%:/target python:alpine sh
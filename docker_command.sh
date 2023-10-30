# Linux
docker run -it --name django_async -p 8000:8000 -v "$(pwd)":/target python:alpine sh

# Windows
docker run -it --name django_async -p 8000:8000 -v %cd%:/target python:alpine sh


# Redis set up
docker run --name python_redis -p 6379:6379 redis:7

# Manual network config

docker network create async_django_redis_net
docker network ls

docker network connect async_django_redis_net django_async
docker network connect async_django_redis_net python_redis
docker network inspect async_django_redis_net 
# development

## image build
```
$ docker-compose build
```

## start docker
```
$ docker-compose run

$ docker ps

CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                    NAMES
ab2322fcbf48        django-app_pipenv   "/bin/sh -c 'pipenv …"   2 days ago          Up 44 minutes       0.0.0.0:8000->8000/tcp   django-app_pipenv_1

```

## access to app
access to `127.0.0.1:8000` from your browser.

## db migrate
```
$ docker exec -it django-app_pipenv_1 /bin/bash

$ pipenv run makemigrations

$ pipenv run migrate
```

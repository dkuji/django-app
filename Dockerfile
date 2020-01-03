FROM kennethreitz/pipenv

ENV APP_HOME="/app"

RUN apt-get update -qq && \
  apt-get install -y locales && \
  mkdir -p /${APP_HOME}

COPY . ${APP_HOME}

RUN cd /app && \
  pipenv install

WORKDIR ${APP_HOME}/project

CMD pipenv run start

EXPOSE 8000

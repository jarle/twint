FROM python:3-slim

WORKDIR /app

RUN pip3 install pipenv

COPY Pipfile.lock .
RUN pipenv install

COPY . .
RUN pipenv install .

CMD pipenv shell
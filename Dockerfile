FROM python:3.6.0-alpine

RUN pip install flask==0.12

COPY ./src /src

WORKDIR /src

EXPOSE 5000

ENV FLASK_APP=app.py

CMD python -m flask run --host=0.0.0.0

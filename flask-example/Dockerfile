FROM python:3.6.0-alpine

RUN pip install flask==0.12

# This copying is only really needed for deploying our container in the
# cloud; during development, we will override this directory with a
# Docker volume on our local machine to enable quick, easy development.
COPY ./src /src

WORKDIR /src

# The Flask app will be exposing itself at port 5000, so we need to
# make sure that Docker knows this.
EXPOSE 5000

# Flask needs to know where our main app is.
ENV FLASK_APP=app.py

# We need to tell Flask to bind to all interfaces, otherwise Docker
# won't be able to expose the port to the Docker host.
CMD python -m flask run --host=0.0.0.0

This directory contains an extremely simple Flask-based Docker Compose
example project, which can optionally be deployed to [cloud.gov][].

## Quick start

For development, run:

```
docker-compose build
docker-compose up
```

Then visit http://localhost:5000 and tinker with `src/app.py`. Changes
should cause the server to automatically reload.

## Deploying to cloud.gov

To deploy to cloud.gov, first [set up and target a sandbox app][sandbox].

You should then the occurrences of `flask-example2` in `cloud.gov-push` to
correspond to whatever you want your app's name to be.

You will also want to create a repository on [Docker Hub][] and edit the
occurrences of `toolness/flask-example` in `docker-compose.yml` and 
`cloud.gov-push` to point at it.

Then run `./cloud.gov-push`.

[cloud.gov]: https://cloud.gov
[sandbox]: https://cloud.gov/docs/getting-started/setup/
[Docker Hub]: https://hub.docker.com

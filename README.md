# Docker development environment.
This is a very simple Docker container that installs /src/requirements.txt on first run and then runs /src/app.py


#### Usage

Single command:

`docker run -v $(pwd):/src tebro/python-dev:3`

With docker compose:

```
python:
  image: tebro/pyton-dev:3
  volumes:
   - ./:/src
```

If your applications entrypoint is named something other than app.py you can pass the name of the file as a parameter.

`docker run -v $(pwd):/src tebro/python-dev:3 my_app.py`

If your application takes commandline arguments you can pass them in after the name of the entrypoint.

`docker run -v $(pwd):/src tebro/python-dev:3 app.py arg1 arg2`

Private Docker-Registry
=======================

Docker image based on dotcloud/registry (https://github.com/dotcloud/docker-registry)
with a customized configuration file.

The custom configuration file uses local storage and sets the loglevel to info.

Only "dev" mode is supported, other modes are disabled.

Environment Variables
---------------------

 * REGISTRY_PORT (default: 5000)
 * GUNICORN_WORKERS (default: 4)

Volumes
-------

The docker images are stored in /tmp/registry.

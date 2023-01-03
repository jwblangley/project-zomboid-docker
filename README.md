# Project Zomboid Docker

A docker container for running a project zomboid server.
Based on the [dedicated linux Project Zomboid server installation instructions](https://pzwiki.net/wiki/Dedicated_Server#Linux).

## Running

```bash
mkdir server-config
docker-compose up
```

### Note: First time running

Running the first time requires an admin password to be set.
You therefore need to attach to the docker container to set this.
Subsequent runs need no further interaction beyond bringing the container up.

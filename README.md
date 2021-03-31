# bismark_sratools_env

## first connection

[https://hub.docker.com/repository/docker/yyasumizu/bismarksratoolsenv](https://hub.docker.com/repository/docker/yyasumizu/bismarksratoolsenv)

```
docker run -it -v ${PWD}:/bismark --name some_name yyasumizu/bismarksratoolsenv:1.1 bash
```

If the access to the instance is the first time, do `vdb-config --interactive`.

## later

1. check containers exist.

```
docker ps -a
```

2. start the container and attach it.

```
docker start {name or container ID}
docker attach {name or container ID}
```
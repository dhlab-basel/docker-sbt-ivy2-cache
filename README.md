# docker-sbt-ivy2-cache
Allows building a base image containing java 8, sbt and ivy2 cache

### Usage

```
$ rm -rf $HOME/.ivy2 ivy-cache
$ [run building of relevant applocations to repopulate ivy2 cache]
$ docker build -t dhlabbasel/sbt-ivy2-cache .
$ [docker login]
$ docker push dhlabbasel/sbt-ivy2-cache:latest
```

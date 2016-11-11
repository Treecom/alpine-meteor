
# Alpine Meteor Docker Build

Dockerfile for creating Nodejs and Meteor compatible application container runninng on small footprint Alpine Linux. Your final container will have only from 100MB to 200MB depending on your application size. Image is currently used on many our applications on production servers withouth any problems.

> WARNING: This docker image is not for building or developing Meteor applications! This Dockerfile creates container to run final builded Meteor application. You have to build Meteor application yourself.

## How to use

See example folder how to build your application docker container. Simply copy files from example folder into your Meteor project. Setup options in `docker-build.sh` file and run `sh docker-build.sh`.

TIP: Also imagemagick, graficmagick and phantomjs is avaliable just by uncomment RUN lines in example Dockerfile.

## Big thanks to

Builded on [`mhart/alpine-node`](https://github.com/mhart/alpine-node) image and inspired by [`MeteorD`](https://github.com/meteorhacks/meteord) project. 

https://github.com/mhart/alpine-node

https://github.com/meteorhacks/meteord

https://github.com/kadirahq/meteord

Thanks guys!

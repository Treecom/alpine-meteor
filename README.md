
# Alpine Meteor Docker Build

Dockerfile for creating Nodejs and Meteor compatible application container runninng on small footprint Alpine Linux. Your final container will have only from 100MB to 200MB depend on your aplication size.

> WARNING: This containers is not for build or develop Meteor applications! This Dockerfile create container to run final builded Meteor aplication. You must build Meteor application your self.

## How to use

See example folder how to build your application container. Simply copy files from example folder into your meteor project. Setup options in `docker-build.sh` file and run `sh docker-build.sh`.

TIP: Also graficmagic and phantomjs is avaliable just by uncomment RUN lines in example Dockerfile.

## Big thanks to

Builded on [`mhart/alpine-node`](https://github.com/mhart/alpine-node) image and inspired by [`MeteorD`](https://github.com/meteorhacks/meteord) project. Thanks guys!

https://github.com/mhart/alpine-node

https://github.com/meteorhacks/meteord

https://github.com/kadirahq/meteord

FROM openjdk:8-jdk-alpine

MAINTAINER Ivan Subotic <ivan.suboticATunibas.ch>

ENV SBT_VERSION 0.13.16
ENV SBT_HOME /usr/local/sbt
ENV PATH ${PATH}:${SBT_HOME}/bin

# Install sbt
RUN curl -sL "http://dl.bintray.com/sbt/native-packages/sbt/$SBT_VERSION/sbt-$SBT_VERSION.tgz" | gunzip | tar -x -C /usr/local && \
    echo -ne "- with sbt $SBT_VERSION\n" >> /root/.built
    
# Copy cache
COPY ivy-cache/ /root/.ivy2

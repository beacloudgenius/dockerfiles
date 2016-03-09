FROM ubuntu:14.04
MAINTAINER Cloud Genius <hello@cloudgeni.us>
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -f -y libmysqlclient-dev mysql-client
# Install application specific packages and modules
# Expose the port your application will run on

RUN mkdir -p /var/app_dir
### load your app here.
RUN touch /var/log/error.log
RUN chmod 664 /var/log/error.log

FROM debian:jessie
MAINTAINER VictorHugo <victorhugo.avila.cl@gmail.com>

# Disable interactive functions
#ENV DEBIAN_FRONTEND noninteractive

# Updating the SO and Installing useful tools
RUN apt-get update && apt-get install -y \
  vim \
  wget \
  git \
  unzip \
  rpm \
  debconf \
  debconf \
  git

# Cleaning the apt/list repo
RUN rm -rf /var/lib/apt/lists/*

# Set the privileges to the html folder
# RUN chmod 777 /var/www/html

# Copy the project to the server
# ADD src/ /var/www/html/
# ADD config/php.ini /usr/local/etc/php/

# Expose the 80 port and 443 port
# EXPOSE 22 80 443

# Running the server
#CMD ["/usr/bin/supervisord"]

# Get base image which is official Golang
FROM golang

# Install R
RUN apt-get update
RUN apt install --assume-yes --no-install-recommends build-essential libcurl4-openssl-dev libssl-dev libxml2-dev r-base

# Install required packages
RUN R -e "install.packages('jsonlite')"
RUN R -e "install.packages('httr')"
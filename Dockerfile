# Argument version
ARG VERSION=3.15

# our base image
FROM alpine:${VERSION}

# install python and pip
RUN apk add --update py3-pip

# copy files required for the app to run
COPY app.py /usr/src/app/

# run the application
CMD python3 /usr/src/app/app.py

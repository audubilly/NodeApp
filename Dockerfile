# use a node base image
FROM node:7-onbuild

# set maintainer
LABEL maintainer "audubilly89@gmail.com"

# set a health check
HEALTHCHECK --interval=4s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:8000 || exit 1

# tell docker what port to expose
EXPOSE 8000

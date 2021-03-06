FROM mwaeckerlin/very-base

ENV CONTAINERNAME    "build/node.js"
ENV NODE_ENV         "production"
ENV PATH             "node_modules/.bin:/app/node_modules/.bin:/sbin:/usr/sbin:/bin:/usr/bin"
USER root
RUN mkdir /app \
    && $ALLOW_USER /app \
    && $PKG_INSTALL git python3 g++ make npm yarn nodejs
WORKDIR /app

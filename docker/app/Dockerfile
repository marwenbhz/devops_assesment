FROM node:10-slim
LABEL maintainer="devops@verity.ch"
EXPOSE 3000
RUN apt-get update -qq && apt-get install -qy \ 
    ca-certificates \
    bzip2 \
    curl \
    libfontconfig \
    --no-install-recommends
WORKDIR /horme/
COPY package*.json ./
RUN npm install \
    && npm cache clean --force
ENV PATH /horme/node_modules/.bin:$PATH
ENV TINI_VERSION v0.18.0
ARG ENV
ENV ENV $ENV
COPY . .
#RUN npm run build
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini
ENTRYPOINT ["/tini", "--"]
CMD ["node", "app.js"]
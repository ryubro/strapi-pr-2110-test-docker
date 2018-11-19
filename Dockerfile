FROM node:10
WORKDIR /pr-2110
RUN git clone https://github.com/ryubro/strapi.git
RUN cd strapi; \
  git checkout fix/reattempt-1851; \
  npm run setup:build
COPY server.json ./
CMD strapi new --dev --dbclient=mongo --dbhost=mongo --dbport=27017 --dbusername= --dbpassword= --dbname=strapi --dbauth=strapi pr-2110-test; \
  cp server.json pr-2110-test/config/environments/development; \
  cd pr-2110-test; \
  strapi start

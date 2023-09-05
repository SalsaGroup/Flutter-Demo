FROM google/dart

WORKDIR /app

COPY ./ ./

RUN apt-get update

RUN apt-get -y install curl unzip xz-utils git libglu1-mesa

RUN git clone https://github.com/flutter/flutter.git

ENV PATH "$PATH:/app/flutter/bin"

RUN flutter channel stable

RUN flutter upgrade

RUN flutter config --enable-web

RUN flutter build web

FROM node:14

WORKDIR /app

COPY --from=0 /app .

RUN npm install

CMD ["npm", "start"]
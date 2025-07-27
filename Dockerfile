FROM node:18-alpine

WORKDIR /usr/src/app

COPY . /usr/src/app

RUN npm install -g @angular/cli

# Avoid ERESOLVE errors
RUN npm install --legacy-peer-deps



EXPOSE 80

CMD ["ng", "serve", "--host", "0.0.0.0"]


FROM node:16
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 4100
RUN npm install --global serve
RUN npm run build
ENTRYPOINT "serve" "-p" "4100" "-s" "build"

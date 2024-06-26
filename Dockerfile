FROM node:18-alpine
LABEL org.opencontainers.image.source=https://github.com/WheatleyHDD/hjam-docker
WORKDIR /usr/src/app
COPY hackathon-jam-front/package.json .
RUN npm install
COPY hackathon-jam-front .
EXPOSE 3000
CMD ["npm", "run", "dev"]
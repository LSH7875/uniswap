FROM node:14.17.0

WORKDIR /home/node/app
RUN yarn install --ignore-engines

EXPOSE 3000

ENV  CHOKIDAR_USEPOLLING=true

CMD ["npm","start"]
FROM node:14.17.0

WORKDIR /home/node/app
RUN yarn install --ignore-engines

COPY ./ ./
RUN yarn
EXPOSE 3000

CMD ["npm","start"]

# docker-compose up
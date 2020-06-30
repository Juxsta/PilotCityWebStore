FROM node:latest
EXPOSE 8081

COPY . ./home/node/app
WORKDIR /home/node/app
RUN yarn
RUN yarn global add @vue/cli
ENTRYPOINT [ "yarn" ]
CMD ["run", "serve"]
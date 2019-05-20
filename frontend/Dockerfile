FROM node:8-jessie
RUN yarn global add serve
ADD ./files/ /
ADD ./src /opt/code
WORKDIR /opt/code/src
RUN yarn build
WORKDIR /opt/code/build
CMD "/run.sh"

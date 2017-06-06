# In your Dockerfile.
FROM node:7.8.0
# The base node image sets a very verbose log level.
ENV NPM_CONFIG_LOGLEVEL warn

RUN npm install -g create-react-app
RUN create-react-app /usr/src/react-app
WORKDIR /usr/src/react-app

# Let Docker know about the port that serve runs on.
EXPOSE 3000

CMD [ "npm", "start" ]

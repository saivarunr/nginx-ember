# # For Production grade ember uncomment following lines
# # resource: https://github.com/creationix/nvm
FROM nginx:stable
# COPY production/ /usr/share/nginx/html

RUN apt-get update
RUN apt-get install -y git curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get install -y nodejs build-essential
RUN npm install -g ember-cli@2.14.1 && npm install -g bower@1.8.0
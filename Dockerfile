FROM bitnami/node:10

RUN apt update
RUN apt upgrade -y
RUN apt install php7.2 -y
RUN echo "find \$1 -type f -name '*.php' -print0 | xargs -0 -n1 -P4 php -l -n | (! grep -v 'No syntax errors detected' )" > /usr/local/bin/phplint
RUN chmod +x /usr/local/bin/phplint
RUN npm i -g eslint stylelint-cli

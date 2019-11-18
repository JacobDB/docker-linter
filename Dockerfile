FROM php:7.2-cli

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs
RUN echo "find \$1 -type f -name '*.php' -print0 | xargs -0 -n1 -P4 php -l -n | (! grep -v 'No syntax errors detected' )" > /usr/local/bin/phplint
RUN chmod +x /usr/local/bin/phplint
RUN npm i -g eslint stylelint-cli

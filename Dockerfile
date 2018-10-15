FROM bitnami/node:8

RUN apt update \
    apt upgrade -y \
    apt install php \
    echo "find \$1 -type f -name '*.php' -print0 | xargs -0 -n1 -P4 php -l -n | (! grep -v 'No syntax errors detected' )" > /usr/local/bin/phplint \
    chmod +x /usr/local/bin/phplint \
    npm i -g eslint stylelint

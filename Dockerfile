FROM loadimpact/k6

RUN wget https://github.com/adnanh/webhook/releases/download/2.6.11/webhook-linux-arm64.tar.gz

RUN tar xvzf webhook-linux-arm64.tar.gz

RUN apk add --update nodejs nodejs-npm

RUN npm install postman-to-k6

ENTRYPOINT "/bin/sh"

COPY k6/ ./k6
COPY scripts/ ./scripts
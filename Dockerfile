FROM alpine:3.10

ARG WWW=diary

RUN apk --update add --no-cache hugo

WORKDIR /var/www/${WWW}

CMD ["hugo", "server", "--bind", "0.0.0.0"]

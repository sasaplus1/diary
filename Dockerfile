FROM alpine:3.10

ENV TZ=Asia/Tokyo

RUN apk --no-cache add hugo tzdata

WORKDIR /var/www

CMD ["hugo", "server", "--bind", "0.0.0.0"]

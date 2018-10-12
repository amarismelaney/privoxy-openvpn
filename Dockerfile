FROM alpine:3.7

RUN apk add --update openvpn privoxy && rm -rf /var/cache/apk/*

COPY service /etc/service/
WORKDIR /etc/service/

CMD privoxy config && openvpn --config eriekarcyn.first.ovpn

FROM alpine:3.7

RUN apk add --no-cache libintl gettext \
	&& cp /usr/bin/envsubst /usr/local/bin/envsubst \
	&& apk del gettext

ENTRYPOINT /usr/local/bin/envsubst

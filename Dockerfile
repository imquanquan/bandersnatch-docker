FROM alpine:3.8

RUN apk update && apk add --no-cache ca-certificates dcron bash python3 tzdata && \
	rm -rf /var/cache/apk/* && \
        ln -sf /usr/share/zoneinfo/America/Chicago /etc/localtime && \
        echo "America/Chicago" > /etc/timezone && \
	pip3 install -r https://bitbucket.org/pypa/bandersnatch/raw/stable/requirements.txt && \
	touch /var/log/pypi.log  && \
	mkdir /mirrors

ADD root /etc/crontabs/root
ADD bandersnatch.conf /etc/bandersnatch.conf

CMD crond && tail -f /var/log/pypi.log

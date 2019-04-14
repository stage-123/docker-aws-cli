FROM alpine:3.9.2
RUN apk -v --update add \
        python \
        py-pip \
        groff \
        less \
        mailcap \
        docker \
        bash \
        && \
    pip install --upgrade awscli==1.14.5 && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*
VOLUME /root/.aws
VOLUME /project
WORKDIR /project
CMD ["aws"]

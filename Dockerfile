FROM b4bz/homer:latest

ENV USER darkhttpd
ENV GROUP darkhttpd
ENV GID 911
ENV UID 911
ENV PORT 8080

COPY entrypoint.sh /entrypoint.sh

USER ${USER}

EXPOSE ${PORT}
VOLUME /www/assets
ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]

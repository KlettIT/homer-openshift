FROM b4bz/homer:latest

ENV PORT 8080

COPY entrypoint.sh /entrypoint.sh

EXPOSE ${PORT}
VOLUME /www/assets
ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]

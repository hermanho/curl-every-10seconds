FROM appropriate/curl:latest
LABEL maintainer="Herman Ho <hmcherman@gmail.com>"

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/entrypoint.sh"]
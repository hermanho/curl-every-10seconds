FROM appropriate/curl:latest
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/entrypoint.sh"]
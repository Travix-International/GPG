FROM alpine:3.10


# Install packages
RUN apk --no-cache add gnupg haveged tini

# Entrypoint
ENTRYPOINT ["/sbin/tini", "--", "gpg"]
CMD ["--version"]

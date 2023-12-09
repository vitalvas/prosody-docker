FROM debian:bookworm

COPY build.sh /build.sh
RUN bash -x /build.sh

CMD ["/usr/bin/prosody", "-F"]

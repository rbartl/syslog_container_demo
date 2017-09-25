FROM debian

RUN apt-get update -q -q && \
apt-get --yes --no-install-recommends install busybox-syslogd runit procps

COPY ./etc /etc
COPY ./runsvdir-start /usr/local/sbin/runsvdir-start

ENTRYPOINT ["/usr/local/sbin/runsvdir-start"]

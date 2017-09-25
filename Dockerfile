FROM tozd/runit
RUN apt-get update -q -q && \
apt-get --yes --force-yes --no-install-recommends install busybox-syslogd
COPY ./etc /etc




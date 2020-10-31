FROM dsosd/mooon

RUN useradd -mN -k /home/io_daemon io_daemon

USER io_daemon
WORKDIR /tmp

CMD whoami

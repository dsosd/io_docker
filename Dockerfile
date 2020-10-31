FROM dsosd/mooon
RUN whoami

RUN useradd -mN -k /home/io_daemon io_daemon

RUN ls /static

USER io_daemon
WORKDIR /home/io_daemon/

RUN whoami
CMD ["sleep", "3600"]

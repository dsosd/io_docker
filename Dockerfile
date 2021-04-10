from dsosd/mooon:latest

workdir /static

run chmod -R o+r /static
run find /static -type d | xargs -I%% chmod o+x %%

run sudo useradd -mU -k /home/io_daemon -s /bin/bash io_daemon

user io_daemon
workdir /home/io_daemon

entrypoint ["whoami"]

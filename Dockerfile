FROM dsosd/mooon

RUN sudo useradd -mN -k /home/user user

USER user
WORKDIR /home/user

CMD whoami

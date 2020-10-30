FROM dsosd/mooon

RUN useradd -mN -k /home/user user

USER user
WORKDIR /home/user

CMD whoami

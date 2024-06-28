FROM pytorch/pytorch:2.3.1-cuda11.8-cudnn8-runtime

RUN apt update && apt install -y vim curl wget git openssh-server

RUN service ssh start

RUN passwd -d root

RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config

RUN echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config

RUN echo "PermitEmptyPasswords yes" >> /etc/ssh/sshd_config

RUN echo "UsePAM no" >> /etc/ssh/sshd_config

RUN echo "ChallengeResponseAuthentication no" >> /etc/ssh/sshd_config

RUN echo "PubkeyAuthentication yes" >> /etc/ssh/sshd_config

RUN echo "AuthorizedKeysFile .ssh/authorized_keys" >> /etc/ssh/sshd_config

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install openssh-server iproute2 iputils-ping apache2 nftables nano-tiny -y 

RUN mkdir /var/run/sshd

RUN useradd -m -s /bin/bash administrador
RUN echo a > /tmp/pass.txt
RUN echo a >> /tmp/pass.txt
RUN passwd administrador < /tmp/pass.txt
RUN passwd root < /tmp/pass.txt


EXPOSE 22

CMD ["/bin/bash", "-c", "/engade-ruta.bash; nft -f /etc/nftables.conf ; /usr/sbin/sshd  ; /usr/sbin/apache2ctl -D FOREGROUND"]
#CMD ["bin/bash", "-c", " /iptables.bash ; /usr/sbin/sshd  ; /usr/sbin/apache2ctl -D FOREGROUND"]
#CMD ["bin/bash", "-c", "/usr/sbin/nginx; /usr/sbin/sshd -D"]
#CMD ["/usr/sbin/sshd", "-D"]

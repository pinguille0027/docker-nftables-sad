FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install openssh-server iproute2 iputils-ping nftables traceroute tcptraceroute nano-tiny  -y 

RUN mkdir /var/run/sshd

RUN useradd -m -s /bin/bash administrador

RUN echo "a" > /tmp/pass.txt
RUN echo "a" >> /tmp/pass.txt
RUN passwd administrador < /tmp/pass.txt
RUN passwd root < /tmp/pass.txt




EXPOSE 22

#CMD ["/usr/sbin/sshd", "-D"]

CMD ["bin/bash", "-c", " nft -f /etc/nftables.conf ; /engade-ruta.bash; /usr/sbin/sshd -D "]


FROM dorowu/ubuntu-desktop-lxde-vnc
RUN wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
RUN apt-get update && apt-get install openssh-server iproute2 iputils-ping remmina ssh nftables traceroute nano-tiny -y 

RUN mkdir /var/run/sshd

RUN useradd -m -s /bin/bash administrador
RUN echo a > /tmp/pass.txt
RUN echo a >> /tmp/pass.txt
RUN passwd administrador < /tmp/pass.txt
RUN passwd root < /tmp/pass.txt

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf 
EXPOSE 22
EXPOSE 5900
EXPOSE 80


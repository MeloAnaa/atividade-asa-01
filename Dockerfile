FROM ubuntu:latest

RUN apt-get update && apt-get install -y dnsutils bind9

CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf"]

 
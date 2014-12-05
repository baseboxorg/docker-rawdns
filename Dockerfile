FROM tianon/rawdns

ADD files/rawdns.json /etc/rawdns.json
ADD files/run.sh /run.sh

RUN chmod 755 /*.sh

EXPOSE 53

CMD ["/run.sh"]


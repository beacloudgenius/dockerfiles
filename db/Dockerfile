FROM mariadb:10.5.12

ENV MYSQL_ROOT_PASSWORD=secret
ENV MYSQL_USER=username
ENV MYSQL_PASSWORD=password
ENV MYSQL_DATABASE=wordpress

COPY backup.sh /usr/local/bin/backup.sh
COPY restore.sh /usr/local/bin/restore.sh

RUN chmod +x /usr/local/bin/backup.sh
RUN chmod +x /usr/local/bin/restore.sh
RUN /usr/local/bin/restore.sh

RUN echo "0 2 * * * /usr/local/bin/backup.sh" | crontab -

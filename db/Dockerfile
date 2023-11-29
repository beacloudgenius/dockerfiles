FROM mariadb:10.5.12

ENV MYSQL_ROOT_PASSWORD=secret
ENV MYSQL_USER=username
ENV MYSQL_PASSWORD=password
ENV MYSQL_DATABASE=wordpress

COPY dump.sh /usr/local/bin/dump.sh
COPY restore.sh /usr/local/bin/restore.sh
COPY bro.cnf /home

# Install cron
RUN apt-get update && apt-get install -y cron

RUN chmod +x /usr/local/bin/dump.sh
RUN chmod +x /usr/local/bin/restore.sh

RUN echo "0 2 * * * /usr/local/bin/dump.sh" | crontab -
RUN echo "30 3 * * 6 /usr/local/bin/backup.sh" | crontab -

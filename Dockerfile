FROM ubuntu:latest

#Install Cron
RUN apt-get -qq update
RUN apt-get -qq -y install cron curl vim

# Add crontab file in the cron directory
ADD crontab /etc/cron.d/ddns-update

# Give execution rights on the cron job
RUN chmod 0644 /etc/cron.d/ddns-update

# Run the command on container startup
CMD printenv >> /etc/environment && cron -f

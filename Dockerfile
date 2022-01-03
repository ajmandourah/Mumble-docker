FROM debian:stable
RUN apt-get update && apt-get install -y mumble-server

VOLUME "/mumble"

EXPOSE 6502
EXPOSE 64738
EXPOSE 64738/udp
COPY start.sh start.sh
RUN chmod 777 start.sh
CMD ["/start.sh"]


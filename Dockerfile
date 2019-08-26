FROM blakedickie/debian:stable
MAINTAINER Blake Dickie <bdickie@landora.net>

RUN apt-get update && apt-get install -y mpd && rm -rf /var/lib/apt/lists/*



VOLUME /var/lib/mpd

EXPOSE 6600
CMD ["mpd", "--stdout", "--no-daemon"]
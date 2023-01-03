FROM steamcmd/steamcmd:ubuntu

WORKDIR /pz

COPY update_zomboid.txt /pz/update_zomboid.txt

RUN steamcmd +runscript /pz/update_zomboid.txt

RUN useradd -m pzuser

USER pzuser
WORKDIR /home/pzuser
ENV HOME=/home/pzuser

# Have to use ENTRYPOINT since it is set in steamcmd/steamcmd
# Requires ports 16261 & 16262
ENTRYPOINT /opt/pzserver/start-server.sh -servername pzserver

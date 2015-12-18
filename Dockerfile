FROM babim/ubuntubase

MAINTAINER "Duc Anh Babim" <ducanh.babim@yahoo.com>

RUN apt-get clean && \
    apt-get update && \
    apt-get install xubuntu-desktop --no-install-recommends -y --force-yes && \
    apt-get install nano mousepad xfce4-taskmanager gnome-icon-theme-full firefox flashplugin-installer tightvncserver\
    -y --force-yes && \
    apt-get purge sane* scan* transmission* abiword* gnumeric* parole* banshee* totem* -y --force-yes && \
    apt-get clean && \
    apt-get autoclean && \
    apt-get autoremove -y

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["vncserver"]

# Expose ports.
EXPOSE 5901

ENV LC_ALL en_US.UTF-8

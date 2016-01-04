FROM babim/ubuntubase

RUN apt-get update && \
    apt-get install xubuntu-desktop --no-install-recommends -y --force-yes && \
    apt-get install nano mousepad xfce4-taskmanager gnome-icon-theme-full firefox flashplugin-installer tightvncserver\
    -y --force-yes && \
    apt-get purge sane* scan* transmission* abiword* gnumeric* parole* banshee* totem* -y --force-yes && \
    apt-get clean && \
    apt-get autoclean && \
    apt-get autoremove -y

# Define default command.
RUN echo '#!/bin/bash' > /startup.sh && \
    echo "rm -rf /tmp/.X*" >> /startup.sh && \
    echo "USER=root" >> /startup.sh && \
    echo "HOME=/root" >> /startup.sh && \
    echo "export USER HOME" >> /startup.sh && \
    echo "vncserver :1" >> /startup.sh && \
    echo "bash" >> /startup.sh && chmod +x /startup.sh
CMD ["/startup.sh"]

# Expose ports.
EXPOSE 5901

FROM ubuntu

MAINTAINER "Duc Anh Babim" <ducanh.babim@yahoo.com>

RUN rm -f /etc/motd && \
    echo "---" > /etc/motd && \
    echo "Support by Duc Anh Babim. Contact: ducanh.babim@yahoo.com" >> /etc/motd && \
    echo "---" >> /etc/motd && \
    echo "Babim Container Framework \n \l" > /etc/issue && \
    touch "/(C) Babim"

RUN apt-get clean && \
    dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get dist-upgrade -y --force-yes && \
    apt-get install xubuntu-desktop --no-install-recommends -y --force-yes && \
    apt-get install nano filezilla mtr mtr-tiny nload bmon iotop htop putty baobab mousepad glogg file-roller firefox synaptic\
    freerdp-X11 remmina regexxer fwbuilder gextractwinicons font-manager gnome-subtitles mediainfo-gui gedit qbittorrent\
    virt-manager gtkorphan screenruler timeshift unetbootin wireshark zenmap nmap rsync wine1.7 winetricks mysql-client\
    gedit file-roller xfce4-taskmanager gnome-icon-theme-full pidgin synapse tomboy p7zip-full mc pyrenamer rar\
    libreoffice google-chrome-stable flashplugin-installer thunderbird tightvncserver\
    -y --force-yes && \
    apt-get purge sane* scan* transmission* abiword* gnumetic* parole* banshee* totem* -y && \
    apt-get clean && \
    apt-get autoclean && \
    apt-get autoremove -y && \

COPY sources.list/ /etc/apt/sources.list.d/

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["bash"]

# Expose ports.
EXPOSE 5901

FROM babim/ubuntubase:18.04
ENV ADMINAPP=false

# download option script
RUN apt-get update && \
    apt-get install -y wget bash && cd / && wget --no-check-certificate https://raw.githubusercontent.com/babim/docker-tag-options/master/z%20SCRIPT%20AUTO/option.sh && \
    chmod 755 /option.sh

# install
RUN wget -O - https://raw.githubusercontent.com/babim/docker-tag-options/master/z%20Xubuntu%20install/xubuntu_install.sh | bash

# Expose ports.
EXPOSE 5901

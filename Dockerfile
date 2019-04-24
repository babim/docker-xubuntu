FROM babim/ubuntubase:18.04
ENV ADMINAPP true
ENV REALVNC_OPTION true

# download option script
RUN apt-get update && \
    apt-get install -y curl bash && \
    curl -Ls https://raw.githubusercontent.com/babim/docker-tag-options/master/z%20SCRIPT%20AUTO/option.sh -o /option.sh && \
    chmod 755 /option.sh

# install
RUN curl -s https://raw.githubusercontent.com/babim/docker-tag-options/master/z%20Xubuntu%20install/xubuntu_install.sh | bash

CMD ["/startup.sh"]

# Expose ports.
EXPOSE 5901

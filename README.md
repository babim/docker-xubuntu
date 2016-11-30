[![](https://images.microbadger.com/badges/image/babim/xubuntu.svg)](https://microbadger.com/images/babim/xubuntu "Get your own image badge on microbadger.com")[![](https://images.microbadger.com/badges/version/babim/xubuntu.svg)](https://microbadger.com/images/babim/xubuntu "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/babim/xubuntu:ssh.svg)](https://microbadger.com/images/babim/xubuntu:ssh "Get your own image badge on microbadger.com")[![](https://images.microbadger.com/badges/version/babim/xubuntu:ssh.svg)](https://microbadger.com/images/babim/xubuntu:ssh "Get your own version badge on microbadger.com")

# Usage

`docker run -it --rm -p 5901:5901 -e USER=root babim/xubuntu`

attach container and enter vnc password (first run)

Connect to vnc://<host>:5901 via VNC client.

Change password over vncpasswd command in container

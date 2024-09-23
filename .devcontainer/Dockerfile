FROM mcr.microsoft.com/devcontainers/base:focal

RUN sudo apt update && \
    sudo apt install -y debian-keyring debian-archive-keyring apt-transport-https curl && \
    curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | sudo gpg --dearmor -o /usr/share/keyrings/caddy-stable-archive-keyring.gpg && \
    curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | sudo tee /etc/apt/sources.list.d/caddy-stable.list && \
    sudo apt update && \
    sudo apt install caddy

# Copy bash profile, if you copy it directly
# you'll lose your colors :-(
COPY ./.bashrc /tmp/.bashrc
RUN cat /tmp/.bashrc >> /home/vscode/.bashrc && \
    rm /tmp/.bashrc
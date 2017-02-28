FROM base/archlinux:latest

# Workaround for https://bugs.archlinux.org/task/53217.
RUN pacman -Syuw --noconfirm
RUN rm /etc/ssl/certs/ca-certificates.crt
RUN pacman -Su --noconfirm

RUN pacman-db-upgrade
RUN pacman -S --noconfirm gcc make rustup

RUN rustup install stable
RUN rustup default stable
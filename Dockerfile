FROM base/archlinux:latest

RUN pacman -Syyu --noconfirm
RUN pacman-db-upgrade
RUN pacman -S --noconfirm gcc rustup

RUN rustup install stable
RUN rustup default stable
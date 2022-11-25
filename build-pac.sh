#!/bin/bash
sudo apt-get update
sudo apt-get install \
          gdisk \
          zip \
          systemd-container \
          bmap-tools \
          asciidoc \
          libarchive-tools \
          git \
          build-essential \
          cmake \
          libarchive-dev \
          pkg-config \
          libcurl4-openssl-dev \
          libgpgme-dev \
          libssl-dev \
          fakeroot \
          dh-autoreconf \
          haveged \
          os-prober \
          kwalify \
          dosfstools \
          libisoburn1 \
          squashfs-tools \
          docbook2x \
          mktorrent \
          doxygen \
          zstd
sudo python3 -m pip install meson
sudo python3 -m pip install ninja
PACMAN_VERSION = 6.0.1
sudo git clone --depth 1 https://gitlab.manjaro.org/packages/core/pacman.git
pushd pacman
sudo wget https://sources.archlinux.org/other/pacman/pacman-${PACMAN_VERSION}.tar.xz
sudo tar -xvf pacman-${PACMAN_VERSION}.tar.xz
pushd pacman-${PACMAN_VERSION}
sudo patch -p1 -i ../pacman-sync-first-option.patch
sudo meson --prefix=/usr \
            --buildtype=plain \
            -Ddoc=disabled \
            -Ddoxygen=enabled \
            -Dscriptlet-shell=/usr/bin/bash \
            -Dldconfig=/usr/bin/ldconfig \
            build
sudo meson compile -C build
sudo meson install -C build
popd
sudo install -m644 pacman.conf /etc/pacman.conf
sudo install -m644 makepkg.conf /etc/
sudo mkdir -p /etc/pacman.d
sudo touch /etc/pacman.d/mirrorlist
popd
sudo install -dm755 /usr/share/pacman/keyrings/
sudo git clone --depth 1 https://gitlab.manjaro.org/packages/core/manjaro-keyring.git
pushd manjaro-keyring
sudo install -m0644 manjaro.gpg /usr/share/pacman/keyrings/
sudo install -m0644 manjaro-trusted /usr/share/pacman/keyrings/
sudo install -m0644 manjaro-revoked /usr/share/pacman/keyrings/
popd
mkdir -p archlinux-keyring
pushd archlinux-keyring
wget https://archlinux.org/packages/core/any/archlinux-keyring/download -O /tmp/archlinux-keyring.tar.zst
tar --use-compress-program=unzstd --strip-components=4 --wildcards -xvf /tmp/archlinux-keyring.tar.zst usr/share/pacman/keyrings/*
sudo install -m0644 archlinux.gpg /usr/share/pacman/keyrings/
sudo install -m0644 archlinux-trusted /usr/share/pacman/keyrings/
sudo install -m0644 archlinux-revoked /usr/share/pacman/keyrings/
popd
sudo pacman-key --init
sudo pacman-key --populate archlinux manjaro
git clone https://github.com/phantomic12/pacman-repo-builder 
sudo apt-get -y install cargo
cd pacman-repo-builder
cargo build
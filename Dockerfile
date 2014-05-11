FROM base/archlinux
MAINTAINER David Parrish <daveparrish@gmail.com>

# Add [haskell-core] to pacman
RUN sed -i '/\[extra\]/i [haskell-core]\nServer = http://xsounds.org/~haskell/core/$arch\n' /etc/pacman.conf
RUN pacman-key -r 4209170B
RUN pacman-key --lsign-key 4209170B
RUN pacman -Syy

# Install GHC and cabal-install
RUN pacman -S --needed --noconfirm ghc cabal-install

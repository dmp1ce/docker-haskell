FROM nfnty/arch-mini
MAINTAINER David Parrish <daveparrish@gmail.com>

# Install GHC and cabal-install
RUN pacman -S --quiet --needed --noconfirm ghc cabal-install

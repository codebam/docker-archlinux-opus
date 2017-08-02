FROM base/archlinux
MAINTAINER Sean Behan <seanwbehan@riseup.net>
RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm opus opus-tools opusfile flac screen
ADD src/opus-convert-dir /usr/bin/opus-convert-dir
ADD src/transcode-music /usr/bin/transcode-music
ENTRYPOINT ["/usr/bin/transcode-music"]

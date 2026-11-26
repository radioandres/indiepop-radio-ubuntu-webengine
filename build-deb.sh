#!/bin/sh
set -eu
HERE=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
VERSION=2.0.3
OUT=${1:-"$HERE/../indiepop-radio_${VERSION}_all.deb"}
STAGE=$(mktemp -d)
trap 'rm -rf "$STAGE"' EXIT HUP INT TERM

install -D -m 755 "$HERE/usr/bin/indiepop-radio" "$STAGE/usr/bin/indiepop-radio"
install -D -m 644 "$HERE/indiepop-radio.desktop" "$STAGE/usr/share/applications/indiepop-radio.desktop"
install -D -m 644 "$HERE/debian/control" "$STAGE/DEBIAN/control"
install -D -m 644 "$HERE/debian/changelog" "$STAGE/usr/share/doc/indiepop-radio/changelog"
install -D -m 644 "$HERE/README-UBUNTU.md" "$STAGE/usr/share/doc/indiepop-radio/README-UBUNTU"
install -D -m 644 "$HERE/indie-pop-logo.png" "$STAGE/usr/share/indiepop-radio/indie-pop-logo.png"
install -D -m 644 "$HERE/indie-pop-logo.png" "$STAGE/usr/share/icons/hicolor/512x512/apps/indiepop-radio.png"
dpkg-deb --build --root-owner-group "$STAGE" "$OUT"
printf 'Paquete creado: %s\n' "$OUT"

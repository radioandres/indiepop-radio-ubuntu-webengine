# Indie Pop para Ubuntu y Kubuntu

Esta edición abre la web oficial dentro de una ventana propia. No lanza Firefox
ni Chromium como aplicación externa. El reproductor de audio, el tema actual,
el historial y los controles son los de la web publicada en
`https://radioandres.mooo.com/`.

## Dependencias

El paquete declara `python3`, `python3-pyqt5` y
`python3-pyqt5.qtwebengine`. Qt WebEngine proporciona Chromium embebido y apt
resuelve sus bibliotecas y datos asociados como dependencias transitivas. No se
requiere Qt Multimedia, GStreamer, VLC ni mpv. WebEngine está en el repositorio
`universe` de Ubuntu 22.04 y 24.04.

## Instalar

```bash
sudo apt install ./indiepop-radio_2.0.0_all.deb
```

Después abre **Indie Pop en Español** desde el menú de aplicaciones. Requiere
conexión a Internet y que el sitio de la radio esté disponible.

## Construir

En Ubuntu/Kubuntu, con `dpkg-deb` disponible:

```bash
chmod +x build-deb.sh
./build-deb.sh
```

El `.deb` se crea un nivel arriba de esta carpeta. Para cambiar el sitio usado,
define `INDIEPOP_RADIO_URL` antes de ejecutar la app.

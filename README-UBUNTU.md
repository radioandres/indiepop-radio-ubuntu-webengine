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
sudo apt install ./indiepop-radio_2.0.1_all.deb
```

APT descarga automáticamente las dependencias faltantes; no hay que instalarlas
una por una. También se puede abrir el `.deb` en el instalador gráfico de
Ubuntu/Kubuntu. Para descargar el paquete ya construido, ve a **Actions** en
GitHub, ejecuta **Build Ubuntu package** y descarga el artefacto
`indiepop-radio-deb`.

Después abre **Indie Pop en Español** desde el menú de aplicaciones. La
instalación requiere conexión a Internet para descargar dependencias faltantes;
la app requiere conexión para acceder al sitio de la radio.

## Construir

En Ubuntu/Kubuntu, con `dpkg-deb` disponible:

```bash
chmod +x build-deb.sh
./build-deb.sh
```

El `.deb` se crea un nivel arriba de esta carpeta. Para cambiar el sitio usado,
define `INDIEPOP_RADIO_URL` antes de ejecutar la app.

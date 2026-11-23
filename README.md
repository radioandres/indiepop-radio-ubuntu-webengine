# Indie Pop en Español para Ubuntu/Kubuntu

Aplicación de escritorio independiente que abre la web oficial de la radio en
una ventana propia usando PyQt5 y Qt WebEngine. No lanza Firefox ni Chromium
como programas externos y reutiliza el reproductor, la información de temas y
el historial que ya ofrece el sitio. Oculta en la app los enlaces para descargar
aplicaciones de otras plataformas.

## Requisitos

- Ubuntu o Kubuntu 22.04 o posterior.
- Paquetes de Ubuntu `python3`, `python3-pyqt5` y
  `python3-pyqt5.qtwebengine` (el paquete declara estas dependencias; apt
  resuelve las bibliotecas de WebEngine).
- El componente `universe` habilitado.
- Conexión a Internet y disponibilidad de `https://indiepopradio.com.uy/`.

La aplicación no usa Qt Multimedia, GStreamer, VLC ni mpv. Qt WebEngine incorpora
un motor Chromium en la propia ventana, por lo que evita abrir el navegador
externo aunque sus bibliotecas tengan un costo de instalación apreciable.

## Construir el paquete Debian

Desde Ubuntu/Kubuntu, en esta carpeta:

```bash
chmod +x build-deb.sh
./build-deb.sh
```

El script crea `../indiepop-radio_2.0.2_all.deb`. Para escoger otra ruta:

```bash
./build-deb.sh /ruta/al/indiepop-radio_2.0.2_all.deb
```

También se puede generar desde GitHub: abre la pestaña **Actions**, ejecuta
**Build Ubuntu package** con **Run workflow** y descarga el artefacto
`indiepop-radio-deb`. La acción construye el paquete en Ubuntu 22.04 y valida
su metadata.

## Instalar

```bash
sudo apt install ./indiepop-radio_2.0.2_all.deb
```

Luego abre **Indie Pop en Español** desde el menú de aplicaciones.

El `.deb` declara sus dependencias para que APT las instale automáticamente.
Así el usuario no necesita buscarlas ni instalarlas una por una, pero sí
necesita conexión a Internet para descargar las dependencias que aún falten.
También puede abrir el `.deb` con el instalador gráfico de Ubuntu/Kubuntu y
aceptar la instalación de dependencias.

## Configuración

Por omisión la aplicación abre `https://indiepopradio.com.uy/`. El reproductor
de la web obtiene el stream desde `/stream` en ese mismo dominio. Para apuntar a
otro sitio compatible, define `INDIEPOP_RADIO_URL` al ejecutar:

```bash
INDIEPOP_RADIO_URL=https://indiepopradio.com.uy/ indiepop-radio
```

## Archivos

- `usr/bin/indiepop-radio`: ventana de escritorio.
- `indiepop-radio.desktop`: entrada para el menú de aplicaciones.
- `debian/control`: metadatos y dependencias del paquete.
- `build-deb.sh`: constructor del `.deb`.
- `README-UBUNTU.md`: instrucciones breves de instalación.

## Licencia

No se especificó una licencia para este paquete. Aclara los derechos de uso y
redistribución antes de publicarlo como repositorio público.

# List Systemd Services Of A User

To list the systemd services of a user, we can use the following command -

## Usage

```
systemctl --user --machine=<username>@ list-units --type=service
```

## Example

```
jungle@LinuxMint-DellG15:~$ systemctl --user --machine=jungle@ list-units --type=service
  UNIT                                  LOAD   ACTIVE SUB     DESCRIPTION
  appimagelauncherd.service             loaded active running AppImageLauncher daemon
  dbus.service                          loaded active running D-Bus User Message Bus
  dconf.service                         loaded active running User preferences database
● distribyted.service                   loaded failed failed  Mount Distribyted HTTPS Server
  evolution-addressbook-factory.service loaded active running Evolution address book service
  evolution-calendar-factory.service    loaded active running Evolution calendar service
  evolution-source-registry.service     loaded active running Evolution source registry
  filter-chain.service                  loaded active running PipeWire filter chain daemon
  flatpak-portal.service                loaded active running flatpak portal
  flatpak-session-helper.service        loaded active running flatpak session helper
  gnome-keyring-daemon.service          loaded active running GNOME Keyring daemon
  gnome-terminal-server.service         loaded active running GNOME Terminal Server
  gvfs-afc-volume-monitor.service       loaded active running Virtual filesystem service - Apple File Conduit monitor
  gvfs-daemon.service                   loaded active running Virtual filesystem service
  gvfs-goa-volume-monitor.service       loaded active running Virtual filesystem service - GNOME Online Accounts monitor
  gvfs-gphoto2-volume-monitor.service   loaded active running Virtual filesystem service - digital camera monitor
  gvfs-metadata.service                 loaded active running Virtual filesystem metadata service
  gvfs-mtp-volume-monitor.service       loaded active running Virtual filesystem service - Media Transfer Protocol monitor
  gvfs-udisks2-volume-monitor.service   loaded active running Virtual filesystem service - disk device monitor
  obex.service                          loaded active running Bluetooth OBEX service
  pipewire-pulse.service                loaded active running PipeWire PulseAudio
  pipewire.service                      loaded active running PipeWire Multimedia Service
● restic-backup.service                 loaded failed failed  Restic Backup Script.
  speech-dispatcher.service             loaded active running Common interface to speech synthesizers
  telnyx-s3-mount.service               loaded active running Mount Telnyx S3 Bucket
  trakt-scrobbler.service               loaded active running Trakt Scrobbler Service
  wireplumber.service                   loaded active running Multimedia Service Session Manager
  xdg-desktop-portal-gtk.service        loaded active running Portal service (GTK/GNOME implementation)
  xdg-desktop-portal-xapp.service       loaded active running Portal service (XApp implementation)
  xdg-desktop-portal.service            loaded active running Portal service
  xdg-document-portal.service           loaded active running flatpak document portal service
  xdg-permission-store.service          loaded active running sandboxed app permission store

Legend: LOAD   → Reflects whether the unit definition was properly loaded.
        ACTIVE → The high-level unit activation state, i.e. generalization of SUB.
        SUB    → The low-level unit activation state, values depend on unit type.

32 loaded units listed. Pass --all to see loaded but inactive units, too.
To show all installed unit files use 'systemctl list-unit-files'.

```

**_Source: [Ask Ubuntu](https://askubuntu.com/a/1424341)_**

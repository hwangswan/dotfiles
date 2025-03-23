# Misc
## ibus-bamboo
https://github.com/BambooEngine/ibus-bamboo

## One-dark theme for gnome terminal
https://github.com/denysdovhan/one-gnome-terminal

## old-dist
Updating PPAs to old.ubuntu for update and installing new packages when your current dist is not supported anymore.

## Changing cursor
- Cursor folder includes
  - `cursor` folder
  - `cursor.theme`
  - `another.theme` file.

1. `sudo nautilus`
2. `/usr/share/icons`, copy that folder to here.
3. using `gnome-tweaks` to change cursor.

## Removing firefox snap

Firefox `snap` does **not** support custom cursor. Uninstall snap version and using `apt` version instead.
```
sudo snap remove firefox
sudo apt-get install firefox
```

## Cleaning deprecated packages

[Source](https://askubuntu.com/a/762815)

1. Download the PYZ bundle (aptsources-cleanup.pyz) from [the latest release](https://github.com/davidfoerster/aptsources-cleanup/releases/latest).
2. Mark the PYZ bundle as executable:

```bash
sudo chmod a+x aptsources-cleanup.pyz
```

3. Run & follow instructions on the screen.

```bash
sudo ./aptsources-cleanup.pyz
```

## Backup / Restore GPG keys
Follow the guide [here](https://www.howtogeek.com/816878/how-to-back-up-and-restore-gpg-keys-on-linux/)

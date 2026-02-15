## Bootstrap from a minimal Arch install

This repo is designed to be applied with `dcli` for both packages and
dotfiles. The flow below assumes you already have a working network
connection and a sudo‑capable user.

### 0) Install Arch (archinstall + Btrfs + snapper)

Use `archinstall` and choose:

- Filesystem: **Btrfs**
- Partitioning: **EFI + root**
  - EFI: ~512MB, FAT32, mount `/boot` (or `/boot/efi`)
  - Root: Btrfs
- Subvolumes (flat layout):
  - `@` -> `/`
  - `@home` -> `/home`
  - `@snapshots` (or `@.snapshots`) -> `/.snapshots`
- Optional subvols: `@var_log` -> `/var/log`
- Enable **multilib** (in archinstall profile/settings)

After first boot:

```bash
sudo pacman -Sy --needed snapper
sudo snapper -c root create-config /
sudo mkdir -p /.snapshots
sudo chmod 750 /.snapshots
```

This enables `dcli` snapshots later.

### 1) Install base tools

```bash
sudo pacman -Sy --needed git
```

Install `dcli` (AUR recommended):

```bash
yay -S dcli-arch-git
```

### 2) Clone this repo into .config

`dcli` expects configs in `~/.config/arch-config`. Clone this repo
directly into that path so no copying is needed:

SSH:

```bash
mkdir -p ~/.config
git clone git@github.com:EMajesty/arch-config.git ~/.config/arch-config
```

HTTPS:

```bash
mkdir -p ~/.config
git clone https://github.com/EMajesty/arch-config.git ~/.config/arch-config
```

### 3) Apply system + dotfiles with dcli

Sync your system:

```bash
dcli sync
```

### 4) Reboot

```bash
sudo reboot
```

### 5) Start user services

dcli does not manage user services yet, so user-level services won’t
auto-start until enabled or started manually (e.g. `mpd`). Start/enable
them with:

```bash
systemctl --user enable --now mpd.service
```

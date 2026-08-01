# archlinux_config

My Arch Linux setup: user dotfiles, system configuration files and the notes I keep
while maintaining the machine. Window manager — **i3**; the Wayland/Sway setup lives in
[archlinux_sway](https://github.com/igorkhaylov/archlinux_sway).

![Desktop](screenshots/archlinux_desktop.png)

## Layout

Paths mirror where the files belong on the system: anything under `home/` goes to
`$HOME`, anything under `etc/` goes to `/etc`.

| Path | Contents |
| --- | --- |
| `home/.config/i3/config` | i3 window manager: keybindings, workspaces, autostart |
| `home/.config/i3status/config` | Status bar: battery, network, volume, clock |
| `home/.Xresources` · `home/.xinitrc` | X server appearance and startup |
| `home/.screenlayout/` | `xrandr` scripts for the external monitor setups |
| `home/.vimrc` · `home/flameshot.conf` | Editor and screenshot tool |
| `home/.zshrc` | Shell — the [grml](https://grml.org/zsh/) zshrc, used as a base |
| `home/.zshrc.my-old` | Previous hand-written zsh config, kept for reference |
| `etc/X11/xorg.conf.d/` | Keyboard layout and touchpad (synaptics) |
| `etc/default/grub` | Bootloader parameters |
| `etc/fstab` | Mount points of this machine — **example, not portable** |
| `docs/` | Notes and cheat sheets (in Russian) |
| `docs/scripts/` | Helper scripts, e.g. PostgreSQL dump/restore |
| `screenshots/` | Desktop screenshots |

## Applying

There is no installer — copy or symlink what you need:

```bash
git clone https://github.com/igorkhaylov/archlinux_config.git
cd archlinux_config

ln -sf "$PWD/home/.config/i3"       ~/.config/i3
ln -sf "$PWD/home/.config/i3status" ~/.config/i3status
ln -sf "$PWD/home/.Xresources"      ~/.Xresources
ln -sf "$PWD/home/.vimrc"           ~/.vimrc
```

System files go in with `sudo cp`, and only after you have read them:

```bash
sudo cp etc/X11/xorg.conf.d/00-keyboard.conf /etc/X11/xorg.conf.d/
sudo cp etc/default/grub /etc/default/grub && sudo grub-mkconfig -o /boot/grub/grub.cfg
```

> `etc/fstab` describes the partition layout of **my** disk, UUIDs included. It is here as
> a reference — copying it onto another machine will break the boot.

## Notes

Write-ups collected while setting the system up, kept as-is:

- [Installing Arch Linux + i3](docs/arch-i3-install.md) — full walkthrough: partitioning,
  network via `iwctl`, base system, bootloader
- [Writing the Arch image with dd](docs/arch-install-via-dd.md)
- [nginx](docs/nginx.md) · [SSH](docs/ssh.md) · [Sending files over SSH](docs/send-data-over-ssh.md)
- [Git](docs/git.md) · [Vim](docs/vim.md) · [Markdown](docs/markdown.md) · [VS Code shortcuts](docs/vscode-shortcuts.md)
- [GPG key types](docs/gpg.md) · [Archives](docs/archives.md) · [Python 3.10](docs/python-3.10.md)
- [Default text editor](docs/default-editor.md) · [Public IP](docs/public-ip.md) · [yt-dlp](docs/yt-dlp.md)

return {
    description = "Core packages and base desktop stack",

    dotfiles_sync = true,

    dotfiles = {
        { source = "dotfiles-home/zshrc",                    target = "~/.zshrc" },
        { source = "dotfiles-home/gitconfig",                target = "~/.gitconfig" },
        { source = "dotfiles-local/bin/random-hyprpaper.sh", target = "~/.local/bin/random-hyprpaper.sh" },
    },

    packages = {
        -- Core system
        "base",
        "git",
        "linux",
        "linux-firmware",
        "openssh",
        "zsh",
        "nix",

        -- Desktop/WM
        "hyprland",
        "waybar",
        "wofi",

        -- Terminal
        "kitty",
        "neovim",
        "tmux",

        -- Shell and UX
        "eza",
        "fastfetch",
        "starship",
        "zsh-autosuggestions",
        "zsh-syntax-highlighting",

        -- File management
        "nautilus",
        "udiskie",
        "udisks2",

        -- Portals/desktop integration
        "xdg-desktop-portal",
        "xdg-desktop-portal-hyprland",
        "xdg-desktop-portal-gtk",

        -- Hyprland extras
        "hypridle",
        "hyprlock",
        "hyprpaper",
        "hyprpicker",
        "hyprshot",

        -- Audio
        "pipewire",
        "pipewire-alsa",
        "pipewire-jack",
        "pipewire-pulse",
        "pavucontrol",
        "wiremix",
        "wireplumber",

        -- Bluetooth
        "bluez",
        "blueman",

        -- Notifications
        "swaync",

        -- Fonts
        "adobe-source-sans-fonts",
        "adobe-source-serif-fonts",
        "cantarell-fonts",
        "noto-fonts",
        "noto-fonts-cjk",
        "noto-fonts-emoji",
        "noto-fonts-extra",
        "ttf-dejavu",
        "ttf-firacode-nerd",
        "ttf-jetbrains-mono-nerd",
        "ttf-liberation",
        "ttf-nerd-fonts-symbols",
        "ttf-roboto",
        "ttf-ubuntu-font-family",

        -- Dev tooling
        "clang",
        "cmake",
        "gdb",
        "jq",
        "openai-codex",
        "rustup",

        -- Containers/virtualization
        "docker",
        "docker-compose",
        "libvirt",
        "qemu-full",
        "virt-manager",
        "virt-viewer",

        -- Remote access
        "freerdp",
        "remmina",

        -- Networking/VPN
        "mullvad-vpn",

        -- System tools
        "btop",
        "efibootmgr",
        "evtest",
        "ntfs-3g",
        "rtkit",

        -- Archives/compression
        "7zip",
        "unzip",
        "xz",
        "zip",

        -- Media/graphics
        "feh",
        "ffmpegthumbnailer",
        "tumbler",
        "zathura",

        -- Apps
        "discord",
        "qbittorrent",
        "rpi-imager",
        "steam",
        "telegram-desktop",
        "zen-browser",
        "obsidian",

        -- Misc
        "age",
        "ark",
        "cmatrix",
        "irssi",
        "gvfs",
        "wpa_supplicant",
        "networkmanager",
        "nm-connection-editor",
        "network-manager-applet",
        "gnome-keyring",
        "swww",
        "adwaita-icon-theme",
        "adwaita-icon-theme-legacy",
        "adw-gtk-theme",
        "nwg-look",
        "nwg-icon-picker",
        "wl-clipboard",
        "base-devel",
        "linux-headers",
        "xdg-utils",
        "man-db",
        "man-pages",
        "less",
        "wget",
        "gcc",
        "llvm",
        "make",
        "ninja",
        "meson",
        "python",
        "python-pip",
        "python-virtualenv",
        "jdk-openjdk",
        "lazygit",
        "fd",
        "hackrf",
        "mpd",
        "mpd-mpris",
        "rmpc",
        "mpc",
        "yabridge",
        "yabridgectl",
        "yt-dlp",
        "wine",
        "winetricks",
        "protontricks",
        "runelite",

        -- AUR (installed via aur_helper)
        "blueberry",
        "mpc-qt",
        "pokeget",
        "ventoy-bin",
        "vial-git",
        "whatsie",
        "winboat",
        "yay",
        "bibata-cursor-theme",
        "meshtastic-python",
        "mpd-discord-rpc",
        "mpdscribble-git",
    },
}

-- ===== UWSM Check =====
hl.on("hyprland.start", function()
    hl.exec_cmd(os.getenv("HOME") .. "/.local/share/dotfiles/bin/check-uwsm")
end)

-- ===== Theme/cursor settings =====
hl.on("hyprland.start", function()
    hl.exec_cmd("gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'")
    hl.exec_cmd("gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'")
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
end)

-- ===== Daemons/Services =====
hl.on("hyprland.start", function()
    -- hl.exec_cmd("uwsm app -- mako")
    hl.exec_cmd("uwsm app -- swaync")
    hl.exec_cmd("hyprpm reload")
    hl.exec_cmd("uwsm app -- hyprsunset")
    -- hl.exec_cmd("uwsm app -- hypridle")
    hl.exec_cmd("uwsm app -- waybar")
    hl.exec_cmd("uwsm app -- swayosd-server")
    hl.exec_cmd("uwsm app -- walker --gapplication-service")
    hl.exec_cmd("uwsm app -- elephant")
    -- hl.exec_cmd("uwsm app -- hyprpaper")
    hl.exec_cmd("uwsm app -- awww-daemon")
    -- hl.exec_cmd("waydroid session start")
end)

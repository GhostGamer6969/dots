-- monitor-workspace
hl.workspace_rule({
    workspace = 1,
    monitor = "eDP-1",
    persistent = false,
})
hl.workspace_rule({
    workspace = 2,
    monitor = "DP-1",
    persistent = false,
})
hl.workspace_rule({
    workspace = 3,
    monitor = "eDP-1",
    persistent = false,
})
hl.workspace_rule({
    workspace = 4,
    monitor = "DP-1",
    persistent = false,
})
hl.workspace_rule({
    workspace = 5,
    monitor = "DP-1",
    persistent = false,
})

-- Apps
hl.window_rule({
    match = { class = "^(itty)$" },
    workspace = "1",
})
hl.window_rule({
    match = { class = "^(com.mitchellh.ghostty)$" },
    workspace = "1",
})
hl.window_rule({
    match = { class = "^(code)$" },
    workspace = "1",
})
hl.window_rule({
    match = { class = "^(obsidian)$" },
    workspace = "1",
})
hl.window_rule({
    match = { class = "^(zen)$" },
    workspace = "2",
})
hl.window_rule({
    match = { class = "^(spotify)$" },
    workspace = "3",
})
hl.window_rule({
    match = { class = "^(com.obsproject.Studio)$" },
    workspace = "3",
})
hl.window_rule({
    match = { class = "^(obs)$" },
    workspace = "3",
})
hl.window_rule({
    match = { class = "^(steam)$" },
    workspace = "4",
})
hl.window_rule({
    match = { class = "^(vesktop)$" },
    workspace = "5",
})
hl.window_rule({
    match = { class = "^(discord)$" },
    workspace = "5",
})
hl.window_rule({
    match = { class = "^(cs2)$" },
    workspace = "6",
})
hl.window_rule({
    match = { class = "^(steam_app_.*)$" },
    workspace = "6",
})
hl.window_rule({
    match = { class = "Waydroid" },
    workspace = "7",
    -- silent = true,
})
-- hl.window_rule({
--     match = { class = "^(SDL2|SDL3)$" },
--     workspace = "6",
-- })

-- Floating windows
hl.window_rule({
    match = { class = "^(waydroid.*)$" },
    center = true,
    size = "467 831",
    float = true,
    workspace = "7",
})
hl.window_rule({
    match = { class = "^(firefox)$" },
    float = true,
    workspace = "8",
    -- silent = true,
})
hl.window_rule({
    match = { tag = "floating-window" },
    float = true,
})
hl.window_rule({
    match = { tag = "floating-window" },
    center = true,
})
hl.window_rule({
    match = { tag = "floating-window" },
    size = "800 600",
})
hl.window_rule({
    match = {
        class = "^(local\\.xdg-desktop-portal-gtk|local\\.sublime_text|local\\.DesktopEditors|local\\.org\\.gnome\\.Nautilus)$",
        title = "^(Open.*Files?|Open [Ff]older.*|Save.*Files?|Save.*As|Save|All Files)",
    },
    tag = "+floating-window",
})

-- idleinhibit
-- hl.window_rule({
--     match = { class = "([window])" },
--     idle_inhibit = "fullscreen",
-- })

-- CLI tools
hl.window_rule({
    match = {
        class = "^(local\\.bluetui|local\\.impala|local\\.wiremix|local\\.org\\.gnome\\.NautilusPreviewer|local\\.com\\.gabm\\.satty)$",
    },
    float = true,
})
hl.window_rule({
    match = {
        class = "^(local\\.bluetui|local\\.impala|local\\.wiremix|local\\.org\\.gnome\\.NautilusPreviewer|local\\.com\\.gabm\\.satty)$",
    },
    center = true,
})
hl.window_rule({
    match = {
        class = "^(local\\.bluetui|local\\.impala|local\\.wiremix|local\\.org\\.gnome\\.NautilusPreviewer|local\\.com\\.gabm\\.satty)$",
    },
    size = "800 600",
})

-- Floating generic class
hl.window_rule({
    match = { class = "^(local\\.floating)$" },
    float = true,
})
hl.window_rule({
    match = { class = "^(local\\.floating)$" },
    center = true,
})
hl.window_rule({
    match = { class = "^(local\\.floating)$" },
    size = "800 600",
})

-- Floating wide class
hl.window_rule({
    match = { class = "^(local\\.floating_wide)$" },
    float = true,
})
hl.window_rule({
    match = { class = "^(local\\.floating_wide)$" },
    center = true,
})
hl.window_rule({
    match = { class = "^(local\\.floating_wide)$" },
    size = "1280 720",
})

-- Browser types
hl.window_rule({
    match = {
        class = "([cC]hrom(e|ium)|[bB]rave-browser|Microsoft-edge|Vivaldi-stable|helium-browser)",
    },
    tag = "+chromium-based-browser",
})
hl.window_rule({
    match = {
        class = "([fF]irefox|zen|zen-browser|zen-bin|librewolf)",
    },
    tag = "+firefox-based-browser",
})

-- Force chromium-based browsers into a tile to deal with --app bug
hl.window_rule({
    match = { tag = "chromium-based-browser" },
    tile = true,
})

-- Only a subtle opacity change, but not for video sites
hl.window_rule({
    match = { tag = "chromium-based-browser" },
    opacity = "1 0.97",
})
hl.window_rule({
    match = { tag = "firefox-based-browser" },
    opacity = "1 0.97",
})

-- Some video sites should never have opacity applied to them
hl.window_rule({
    match = {
        initial_title = "((?i)(?:[a-z0-9-]+\\.)*youtube\\.com_/|app\\.zoom\\.us_/wc/home)",
    },
    opacity = "1.0 1.0",
})

-- No transparency on media windows
hl.window_rule({
    match = {
        class = "^(zoom|vlc|mpv|org\\.kde\\.kdenlive|com\\.obsproject\\.Studio|com\\.github\\.PintaProject\\.Pinta|imv|org\\.gnome\\.NautilusPreviewer)$",
    },
    opacity = "1 1",
})


-- App specific tweaks

-- Localsend
hl.window_rule({
    match = { class = "(Share|localsend)" },
    float = true,
})
hl.window_rule({
    match = { class = "(Share|localsend)" },
    center = true,
})
hl.window_rule({
    match = { class = "(Share|localsend)" },
    size = "500 700",
})

-- waypaper
hl.window_rule({
    match = { class = "(waypaper)" },
    float = true,
})
hl.window_rule({
    match = { class = "(waypaper)" },
    size = "800 600",
})
hl.window_rule({
    match = { class = "(waypaper)" },
    center = true,
})

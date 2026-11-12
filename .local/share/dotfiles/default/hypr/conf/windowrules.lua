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
hl.workspace_rule({
    workspace = 9,
    monitor = "HEADLESS-1",
})
-- Apps
-- hl.window_rule({
--     match = { class = "^(firefox)$" },
--     workspace = "99",
-- })
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
    match = { class = "^(chromium-browser)$" },
    workspace = "8",
    -- silent = true,
})
hl.window_rule({
    match = { tag = "floating-window" },
    float = true,
    center = true,
    size = "800 600",
})
hl.window_rule({
    match = {
        class = "^(local\\.xdg-desktop-portal-gtk|local\\.sublime_text|local\\.DesktopEditors|local\\.org\\.gnome\\.Nautilus)$",
        title = "^(Open.*Files?|Open [Ff]older.*|Save.*Files?|Save.*As|Save|All Files)",
    },
    tag = "+floating-window",
})
-- CLI tools
hl.window_rule({
    match = {
        class = "^(local\\.bluetui|local\\.impala|local\\.wiremix|local\\.org\\.gnome\\.NautilusPreviewer|local\\.com\\.gabm\\.satty)$",
    },
    float = true,
    center = true,
    size = "800 600",
})

-- Floating generic class
hl.window_rule({
    match = { class = "^(local\\.floating)$" },
    float = true,
    center = true,
    size = "800 600",
})

-- Floating wide class
hl.window_rule({
    match = { class = "^(local\\.floating_wide)$" },
    float = true,
    center = true,
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

-- -- Force chromium-based browsers into a tile to deal with --app bug
-- hl.window_rule({
--     match = { tag = "chromium-based-browser" },
    -- tile = true,
-- })

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
    center = true,
    size = "500 700",
})

-- waypaper
hl.window_rule({
    match = { class = "(waypaper)" },
    float = true,
    center = true,
    size = "800 600",
})
hl.window_rule({
  match = { class = "^ONLYOFFICE$" },
})

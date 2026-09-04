-- SUPER KEYkeyb
local mainMod = "SUPER"
local terminal = "ghostty"
local scripts = "/home/ghostgamer/.local/share/dotfiles/default/hypr/scripts"

-- Applications
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(scripts .. "/term.sh"))                                      -- Launch terminal
hl.bind(mainMod .. " + P", hl.dsp.exec_cmd(scripts .. "/pet.sh"))                                       -- Launch wpets
hl.bind(mainMod .. " + C", hl.dsp.exec_cmd("uwsm app -- code"))                                         -- Launch code
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(scripts .. "/zen-browser.sh"))                              -- Launch browser
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("uwsm app -- nautilus --new-window"))                        -- Launch file manager
hl.bind(mainMod .. " + O", hl.dsp.exec_cmd("uwsm app -- obs"))                                          -- Launch obs
-- hl.bind(mainMod .. " + S", hl.dsp.exec_cmd("/home/ghostgamer/Scripts/stream"))                       -- Launch spotify
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd(scripts .. "/rmpc.sh"))                                     -- Launch rmpc
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd(scripts .. "/vesktop.sh"))                                  -- Launch discord
hl.bind(mainMod .. " + SHIFT + O", hl.dsp.exec_cmd(scripts .. "/obsidian.sh"))                         -- Launch obsidian
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.exec_cmd("uwsm app -- localsend"))                            -- Launch localsend
hl.bind(mainMod .. " + SHIFT + R", hl.dsp.exec_cmd("~/.config/waybar/scripts/reload.sh"))              -- Reload waybar and swaync
hl.bind("CTRL + SHIFT + Escape", hl.dsp.exec_cmd("ghostty --class=local.floating_wide -e btop"))       -- Launches btop

-- Windows
hl.bind(mainMod .. " + W", hl.dsp.window.close())                                                       -- Kill active window
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd("hyprctl activewindow | grep pid | tr -d 'pid:' | xargs kill")) -- Quit active window and all open instances
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = 0 }))                                     -- Set active window to fullscreen
hl.bind(mainMod .. " + M", hl.dsp.window.fullscreen({ mode = 1 }))                                     -- Maximize Window
hl.bind(mainMod .. " + T", hl.dsp.window.float({ action = "toggle" }))                                 -- Toggle active windows into floating mode
-- hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))                                             -- Toggle split
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))                                                -- Toggle split
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "l" }))                                       -- Move focus left
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "r" }))                                      -- Move focus right
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "u" }))                                         -- Move focus up
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "d" }))                                       -- Move focus down
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })                              -- Move window with the mouse
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })                            -- Resize window with the mouse
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.resize({ x = 100, y = 0, relative = true }))     -- Increase window width with keyboard
hl.bind(mainMod .. " + SHIFT + left", hl.dsp.window.resize({ x = -100, y = 0, relative = true }))     -- Reduce window width with keyboard
hl.bind(mainMod .. " + SHIFT + down", hl.dsp.window.resize({ x = 0, y = 100, relative = true }))       -- Increase window height with keyboard
hl.bind(mainMod .. " + SHIFT + up", hl.dsp.window.resize({ x = 0, y = -100, relative = true }))        -- Reduce window height with keyboard

-- Groups
hl.bind(mainMod .. " + G", hl.dsp.group.toggle())                                                       -- Toggle window group
hl.bind("SUPER + CTRL + Tab", hl.dsp.exec_cmd("hyprctl dispatch changegroupactive"))                   -- change group active
hl.bind("SUPER + CTRL + SHIFT + Tab", hl.dsp.exec_cmd("hyprctl dispatch changegroupactive b"))         -- chnange group active
hl.bind(mainMod .. " + K", hl.dsp.layout("swapsplit"))                                                  -- Swapsplit
-- hl.bind(mainMod .. " + K", hl.dsp.layout("swapsplit"))                                               -- Swapsplit
hl.bind(mainMod .. " + ALT + left", hl.dsp.window.swap({ direction = "l" }))                            -- Swap tiled window left
hl.bind(mainMod .. " + ALT + right", hl.dsp.window.swap({ direction = "r" }))                           -- Swap tiled window right
hl.bind(mainMod .. " + ALT + up", hl.dsp.window.swap({ direction = "u" }))                             -- Swap tiled window up
hl.bind(mainMod .. " + ALT + down", hl.dsp.window.swap({ direction = "d" }))                           -- Swap tiled window down

hl.bind("ALT + Tab", function()
    hl.dispatch(hl.dsp.window.cycle_next())
    hl.dispatch(hl.dsp.window.bring_to_top())
end)

-- Actions
hl.bind(mainMod .. " + CTRL + N", hl.dsp.exec_cmd("hyprsunset-toggle"))                                -- Toggle script
hl.bind(mainMod .. " + CTRL + O", hl.dsp.exec_cmd("ghostty --class=local.floating -e ollama-chat --quick")) -- Ollama - start a quick chat
hl.bind(mainMod .. " + CTRL + W", hl.dsp.exec_cmd("waypaper"))                                         -- Wallpaper

-- Walker and Elephant
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd("walker"))                                                  -- Launch application launcher
hl.bind(mainMod .. " + Escape", hl.dsp.exec_cmd("walker --theme menus -m menus:system --width 150 --minheight 1 --maxheight 600")) -- System menu
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd("sh -c 'hyprshot -m region --clipboard-only'"))    -- Screenshot to clipboard
hl.bind("Print", hl.dsp.exec_cmd("sh -c 'hyprshot -m region --clipboard-only'"))                       -- Screenshot to clipboard
hl.bind(mainMod .. " + CTRL + SHIFT + S", hl.dsp.exec_cmd("walker --theme menus -m menus:screenshots --width 295 --minheight 1 --maxheight 600")) -- Screenshot menu
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd("walker -m clipboard"))                                     -- Clipboard history
hl.bind(mainMod .. " + PERIOD", hl.dsp.exec_cmd("walker -m symbols"))                                  -- Emoji menu
hl.bind(mainMod .. " + ALT + SPACE", hl.dsp.exec_cmd("walker --theme menus -m menus:menu --width 295 --minheight 1 --maxheight 900")) -- Main menu
hl.bind(mainMod .. " + CTRL + B", hl.dsp.exec_cmd("walker -t menus -m menus:bookmarks --maxwidth 300 --minwidth 180")) -- Bookmarks menu          

-- Workspaces
hl.bind(mainMod .. " + 1", hl.dsp.focus({ workspace = 1 }))                                            -- Open workspace 1
hl.bind(mainMod .. " + 2", hl.dsp.focus({ workspace = 2 }))                                            -- Open workspace 2
hl.bind(mainMod .. " + 3", hl.dsp.focus({ workspace = 3 }))                                            -- Open workspace 3
hl.bind(mainMod .. " + 4", hl.dsp.focus({ workspace = 4 }))                                            -- Open workspace 4
hl.bind(mainMod .. " + 5", hl.dsp.focus({ workspace = 5 }))                                            -- Open workspace 5
hl.bind(mainMod .. " + 6", hl.dsp.focus({ workspace = 6 }))                                            -- Open workspace 6
hl.bind(mainMod .. " + 7", hl.dsp.focus({ workspace = 7 }))                                            -- Open workspace 7
hl.bind(mainMod .. " + 8", hl.dsp.focus({ workspace = 8 }))                                            -- Open workspace 8
hl.bind(mainMod .. " + 9", hl.dsp.focus({ workspace = 9 }))                                            -- Open workspace 9
hl.bind(mainMod .. " + 0", hl.dsp.focus({ workspace = 10 }))                                           -- Open workspace 10

hl.bind(mainMod .. " + SHIFT + 1", hl.dsp.window.move({ workspace = 1 }))                              -- Move active window to workspace 1
hl.bind(mainMod .. " + SHIFT + 2", hl.dsp.window.move({ workspace = 2 }))                              -- Move active window to workspace 2
hl.bind(mainMod .. " + SHIFT + 3", hl.dsp.window.move({ workspace = 3 }))                              -- Move active window to workspace 3
hl.bind(mainMod .. " + SHIFT + 4", hl.dsp.window.move({ workspace = 4 }))                              -- Move active window to workspace 4
hl.bind(mainMod .. " + SHIFT + 5", hl.dsp.window.move({ workspace = 5 }))                              -- Move active window to workspace 5
hl.bind(mainMod .. " + SHIFT + 6", hl.dsp.window.move({ workspace = 6 }))                              -- Move active window to workspace 6
hl.bind(mainMod .. " + SHIFT + 7", hl.dsp.window.move({ workspace = 7 }))                              -- Move active window to workspace 7
hl.bind(mainMod .. " + SHIFT + 8", hl.dsp.window.move({ workspace = 8 }))                              -- Move active window to workspace 8
hl.bind(mainMod .. " + SHIFT + 9", hl.dsp.window.move({ workspace = 9 }))                              -- Move active window to workspace 9
hl.bind(mainMod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))                             -- Move active window to workspace 10

hl.bind(mainMod .. " + Tab", hl.dsp.focus({ workspace = "m+1" }))                                     -- Open next workspace
hl.bind(mainMod .. " + SHIFT + Tab", hl.dsp.focus({ workspace = "m-1" }))                             -- Open previous workspace

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))                              -- Open next workspace
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))                                -- Open previous workspace
hl.bind(mainMod .. " + CTRL + down", hl.dsp.focus({ workspace = "empty" }))                            -- Open the next empty workspace

-- Brightness
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("swayosd-client --brightness raise"), { repeating = true })   -- Increase brightness
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("swayosd-client --brightness lower"), { repeating = true }) -- Decrease brightness

-- Volume
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("swayosd-client --output-volume +5"), { repeating = true })  -- Volume up
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("swayosd-client --output-volume -5"), { repeating = true })  -- Volume down
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("swayosd-client --output-volume mute-toggle"))                     -- Toggle mute

-- Media (requires playerctl)
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("swayosd-client --playerctl play-pause"))  -- Play/pause media
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("swayosd-client --playerctl play-pause")) -- Play/pause media
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("swayosd-client --playerctl next"))        -- Next track
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("swayosd-client --playerctl previous"))    -- Previous track

hl.bind("SUPER + SHIFT + P", hl.dsp.exec_cmd("swayosd-client --playerctl play-pause")) -- Play/pause media

hl.bind("SUPER + SHIFT + N", hl.dsp.exec_cmd("swayosd-client --playerctl next"))        -- Next track
hl.bind("SUPER + SHIFT + B", hl.dsp.exec_cmd("swayosd-client --playerctl previous"))    -- Previous track

-- Lock
hl.bind("SUPER + L", hl.dsp.exec_cmd("hyprlock")) -- lock screen

-- Lid
hl.bind("switch:on:Lid Switch", hl.dsp.exec_cmd("hyprlock"))
hl.bind("switch:on:Lid Switch", hl.dsp.exec_cmd("hyprctl dispatch dpms off"))
hl.bind("switch:off:Lid Switch", hl.dsp.exec_cmd("hyprctl dispatch dpms on"))

--Sound board
hl.bind("CTRL + ALT + SHIFT + F", hl.dsp.exec_cmd('soundboard "/home/ghostgamer/Arambh/sound-effects/Faah.mp3"')) -- Faah Sound Effect
hl.bind("CTRL + ALT + SHIFT + W", hl.dsp.exec_cmd('soundboard "/home/ghostgamer/Arambh/sound-effects/WTF.mp3"')) -- WTF Amigo Sound Effect

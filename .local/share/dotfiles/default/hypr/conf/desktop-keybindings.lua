-- SUPER KEY
local mainMod = "SUPER"
local terminal = "ghostty"

-- Applications
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd("uwsm app -- " .. terminal))                                      -- Launch terminal
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("uwsm app -- zen-browser"))                                       -- Launch browser
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("uwsm app -- nautilus --new-window"))                             -- Launch file manager

-- Windows
hl.bind(mainMod .. " + W", hl.dsp.window.close())                                                            -- Kill active window
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd("hyprctl activewindow | grep pid | tr -d 'pid:' | xargs kill")) -- Quit active window and all open instances
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "set" }))               -- Set active window to fullscreen
hl.bind(mainMod .. " + M", hl.dsp.window.fullscreen({ mode = "maximized", action = "set" }))                -- Maximize Window
hl.bind(mainMod .. " + T", hl.dsp.window.float({ action = "toggle" }))                                       -- Toggle active windows into floating mode
hl.bind(mainMod .. " + SHIFT + T", hl.dsp.layout("workspaceopt allfloat"))                                  -- Toggle all windows into floating mode
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))                                                    -- Toggle split
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "l" }))                                            -- Move focus left
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "r" }))                                           -- Move focus right
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "u" }))                                              -- Move focus up
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "d" }))                                            -- Move focus down
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })                                  -- Move window with the mouse
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })                                -- Resize window with the mouse
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.resize({ x = 100, y = 0, relative = true }))          -- Increase window width with keyboard
hl.bind(mainMod .. " + SHIFT + left", hl.dsp.window.resize({ x = -100, y = 0, relative = true }))           -- Reduce window width with keyboard
hl.bind(mainMod .. " + SHIFT + down", hl.dsp.window.resize({ x = 0, y = 100, relative = true }))            -- Increase window height with keyboard
hl.bind(mainMod .. " + SHIFT + up", hl.dsp.window.resize({ x = 0, y = -100, relative = true }))             -- Reduce window height with keyboard
hl.bind(mainMod .. " + G", hl.dsp.group.toggle())                                                            -- Toggle window group
hl.bind(mainMod .. " + K", hl.dsp.window.swap({ next = true }))                                             -- Swapsplit
hl.bind(mainMod .. " + ALT + left", hl.dsp.window.swap({ direction = "l" }))                                -- Swap tiled window left
hl.bind(mainMod .. " + ALT + right", hl.dsp.window.swap({ direction = "r" }))                               -- Swap tiled window right
hl.bind(mainMod .. " + ALT + up", hl.dsp.window.swap({ direction = "u" }))                                  -- Swap tiled window up
hl.bind(mainMod .. " + ALT + down", hl.dsp.window.swap({ direction = "d" }))                                -- Swap tiled window down
hl.bind("ALT + Tab", hl.dsp.window.cycle_next())                                                           -- Cycle between windows
hl.bind("ALT + Tab", hl.dsp.window.bring_to_top())                                                         -- Bring active window to the top

-- Actions
hl.bind(mainMod .. " + CTRL + N", hl.dsp.exec_cmd("hyprsunset-toggle"))                                     -- Toggle script
hl.bind(mainMod .. " + CTRL + O", hl.dsp.exec_cmd("ghostty --class=local.floating -e ollama-chat --quick")) -- Ollama - start a quick chat
hl.bind(mainMod .. " + CTRL + W", hl.dsp.exec_cmd("waypaper"))                                             -- Wallpaper

-- Walker and Elephant
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd("walker"))                                                       -- Launch application launcher
hl.bind(mainMod .. " + Escape", hl.dsp.exec_cmd("walker --theme menus -m menus:system --width 150 --minheight 1 --maxheight 600")) -- System menu
hl.bind("Print", hl.dsp.exec_cmd("sh -c 'hyprshot -m region --clipboard-only'"))                             -- Screenshot to clipboard
hl.bind(mainMod .. " + Print", hl.dsp.exec_cmd("walker --theme menus -m menus:screenshots --width 295 --minheight 1 --maxheight 600")) -- Screenshot menu
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd("walker -m clipboard"))                                         -- Clipboard history
hl.bind(mainMod .. " + ALT + SPACE", hl.dsp.exec_cmd("walker --theme menus -m menus:menu --width 295 --minheight 1 --maxheight 900")) -- Main menu
hl.bind(mainMod .. " + CTRL + B", hl.dsp.exec_cmd("walker -t menus -m menus:bookmarks --maxwidth 300 --minwidth 180")) -- Bookmarks menu

-- Workspaces
hl.bind(mainMod .. " + 1", hl.dsp.focus({ workspace = "1" }))                                               -- Open workspace 1
hl.bind(mainMod .. " + 2", hl.dsp.focus({ workspace = "2" }))                                               -- Open workspace 2
hl.bind(mainMod .. " + 3", hl.dsp.focus({ workspace = "3" }))                                               -- Open workspace 3
hl.bind(mainMod .. " + 4", hl.dsp.focus({ workspace = "4" }))                                               -- Open workspace 4
hl.bind(mainMod .. " + 5", hl.dsp.focus({ workspace = "5" }))                                               -- Open workspace 5
hl.bind(mainMod .. " + 6", hl.dsp.focus({ workspace = "6" }))                                               -- Open workspace 6
hl.bind(mainMod .. " + 7", hl.dsp.focus({ workspace = "7" }))                                               -- Open workspace 7
hl.bind(mainMod .. " + 8", hl.dsp.focus({ workspace = "8" }))                                               -- Open workspace 8
hl.bind(mainMod .. " + 9", hl.dsp.focus({ workspace = "9" }))                                               -- Open workspace 9
hl.bind(mainMod .. " + 0", hl.dsp.focus({ workspace = "10" }))                                              -- Open workspace 10

hl.bind(mainMod .. " + SHIFT + 1", hl.dsp.window.move({ workspace = "1" }))                                -- Move active window to workspace 1
hl.bind(mainMod .. " + SHIFT + 2", hl.dsp.window.move({ workspace = "2" }))                                -- Move active window to workspace 2
hl.bind(mainMod .. " + SHIFT + 3", hl.dsp.window.move({ workspace = "3" }))                                -- Move active window to workspace 3
hl.bind(mainMod .. " + SHIFT + 4", hl.dsp.window.move({ workspace = "4" }))                                -- Move active window to workspace 4
hl.bind(mainMod .. " + SHIFT + 5", hl.dsp.window.move({ workspace = "5" }))                                -- Move active window to workspace 5
hl.bind(mainMod .. " + SHIFT + 6", hl.dsp.window.move({ workspace = "6" }))                                -- Move active window to workspace 6
hl.bind(mainMod .. " + SHIFT + 7", hl.dsp.window.move({ workspace = "7" }))                                -- Move active window to workspace 7
hl.bind(mainMod .. " + SHIFT + 8", hl.dsp.window.move({ workspace = "8" }))                                -- Move active window to workspace 8
hl.bind(mainMod .. " + SHIFT + 9", hl.dsp.window.move({ workspace = "9" }))                                -- Move active window to workspace 9
hl.bind(mainMod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = "10" }))                               -- Move active window to workspace 10

hl.bind(mainMod .. " + Tab", hl.dsp.focus({ workspace = "m+1" }))                                          -- Open next workspace
hl.bind(mainMod .. " + SHIFT + Tab", hl.dsp.focus({ workspace = "m-1" }))                                  -- Open previous workspace

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))                                  -- Open next workspace
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))                                    -- Open previous workspace
hl.bind(mainMod .. " + CTRL + down", hl.dsp.focus({ workspace = "empty" }))                                -- Open the next empty workspace

-- Brightness
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd([[ddcutil setvcp 10 + 5 && notify-send "Brightness" "$(ddcutil getvcp 10 | awk '/Brightness/ {gsub(/,/, "", $9); print $9}')%"]]), { repeating = true })  -- Increase brightness
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd([[ddcutil setvcp 10 - 5 && notify-send "Brightness" "$(ddcutil getvcp 10 | awk '/Brightness/ {gsub(/,/, "", $9); print $9}')%"]]), { repeating = true }) -- Decrease brightness

-- Volume
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("swayosd-client --output-volume +5"), { repeating = true })          -- Volume up
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("swayosd-client --output-volume -5"), { repeating = true })          -- Volume down
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("swayosd-client --output-volume mute-toggle"))                             -- Toggle mute

-- Media (requires playerctl)
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("swayosd-client --playerctl play-pause"))  -- Play/pause media
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("swayosd-client --playerctl play-pause")) -- Play/pause media
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("swayosd-client --playerctl next"))        -- Next track
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("swayosd-client --playerctl previous"))    -- Previous track

-- Lock
hl.bind("XF86Lock", hl.dsp.exec_cmd("hyprlock"))  -- Lock screen

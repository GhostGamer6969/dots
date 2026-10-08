hl.env("GDK_SCALE", "1")

hl.monitor({
    output = "eDP-1",
    mode = "1920x1080@144",
    position = "0x0",
    scale = 1,
})
-- create + configure the virtual output once Hyprland has started
-- hl.on("hyprland.start", function()
--     hl.exec_cmd("hyprctl output create headless")
--     hl.exec_cmd("hyprctl keyword monitor HEADLESS-1,1920x1080,1920x0,1")
-- end)
-- hl.monitor({
--     output = "eDP-2",
--     mode = "1920x1080@60",
--     position = "0x0",
--     scale = 1,
-- })

-- hl.monitor({
--     output = "DP-1",
--     mode = "1920x1080@60",
--     position = "0x0",
--     scale = 1,
-- })

hl.monitor({
    output = "",
    mode = "preferred",
    position = "auto",
    scale = 1,
})

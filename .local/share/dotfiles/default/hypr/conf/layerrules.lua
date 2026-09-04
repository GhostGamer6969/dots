hl.layer_rule({
    match = {
        namespace = "swaync-notification-window",
    },
    blur = true,
})

hl.layer_rule({
    match = {
        namespace = "swaync-notification-window",
    },
    ignore_alpha = 0.41,
})

hl.layer_rule({
    match = {
        namespace = "osd",
    },
    blur = true,
})

hl.layer_rule({
    match = {
        namespace = "osd",
    },
    ignore_alpha = 0,
})

-- hl.layer_rule({
--     blur = true,
--     match = {
--         namespace = "waybar",
--     },
-- })

hl.layer_rule({
    match = {
        namespace = "waybar",
    },
    no_anim = true,
})

hl.layer_rule({
    match = {
        namespace = "walker",
    },
    blur = true,
})

hl.layer_rule({
    match = {
        namespace = "walker",
    },
    ignore_alpha = 0.41,
})

hl.layer_rule({
    match = {
        namespace = "swaync-control-center",
    },
    blur = true,
})

hl.layer_rule({
    match = {
        namespace = "swaync-control-center",
    },
    ignore_alpha = 0.41,
})

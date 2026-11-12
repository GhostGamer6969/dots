hl.layer_rule({
    match = {
        namespace = "swaync-notification-window",
    },
    blur = true,
    ignore_alpha = 0.41,
})

hl.layer_rule({
    match = {
        namespace = "osd",
    },
    blur = true,
    ignore_alpha = 0,
})

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
    ignore_alpha = 0.41,
})


hl.layer_rule({
    match = {
        namespace = "swaync-control-center",
    },
    blur = true,
    ignore_alpha = 0.41,
})

hl.layer_rule({
    name = "no-anim-for-selection",
    match = {
        namespace = "selection",
    },
    no_anim = true,
})

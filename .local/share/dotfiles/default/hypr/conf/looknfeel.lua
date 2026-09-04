hl.config({
    general = {
        gaps_in = 8,
        gaps_out = 13,
        border_size = 0,
        layout = "dwindle",
        resize_on_border = false,
    },

    gestures = {
        workspace_swipe_distance = 700,
        workspace_swipe_cancel_ratio = 0.2,
        workspace_swipe_min_speed_to_force = 5,
        workspace_swipe_direction_lock = true,
        workspace_swipe_direction_lock_threshold = 10,
        workspace_swipe_create_new = true,
    },

    decoration = {
        rounding = 21,
        rounding_power = 13,

        active_opacity = 0.80,
        inactive_opacity = 0.72,

        -- motion_blur{
        --   enabled=true
        --   samples= 7
        -- }

        -- blur {
        --     enabled = true
        --     size = 4
        --     passes = 2
        --     vibrancy = 3
        --     new_optimizations = on
        --     brightness = 1.0
        --     popups = true
        --     contrast = 1.08
        --     ignore_opacity = false
        --     xray = false
        -- }

        shadow = {
            enabled = true,
            range = 10,
            render_power = 2,
            color = 0x33000000,
        },
    },

    animations = {
        enabled = true,
    },

    dwindle = {
        preserve_split = true,
    },

    binds = {
        workspace_back_and_forth = false,
        allow_workspace_cycles = true,
        pass_mouse_when_bound = false,
    },

    misc = {
        disable_hyprland_logo = true,
    },
})

hl.curve("linear", {
    type = "bezier",
    points = {
        { 0, 0 },
        { 1, 1 },
    },
})

hl.curve("easeOut", {
    type = "bezier",
    points = {
        { 0.25, 1 },
        { 0.5, 1 },
    },
})

hl.curve("easeInOut", {
    type = "bezier",
    points = {
        { 0.45, 0 },
        { 0.55, 1 },
    },
})

hl.curve("easeOutQuint", {
    type = "bezier",
    points = {
        { 0.23, 1 },
        { 0.32, 1 },
    },
})

hl.curve("easeInOutCubic", {
    type = "bezier",
    points = {
        { 0.65, 0.05 },
        { 0.36, 1 },
    },
})

hl.curve("almostLinear", {
    type = "bezier",
    points = {
        { 0.5, 0.5 },
        { 0.75, 1.0 },
    },
})

hl.curve("quick", {
    type = "bezier",
    points = {
        { 0.15, 0 },
        { 0.1, 1 },
    },
})

hl.animation({
    leaf = "global",
    enabled = true,
    speed = 5,
    bezier = "default",
})

hl.animation({
    leaf = "windows",
    enabled = true,
    speed = 4.5,
    bezier = "easeOutQuint",
})

hl.animation({
    leaf = "windowsIn",
    enabled = true,
    speed = 2.8,
    bezier = "easeOutQuint",
    style = "popin 87%",
})

hl.animation({
    leaf = "windowsOut",
    enabled = true,
    speed = 1.2,
    bezier = "linear",
    style = "popin 87%",
})

hl.animation({
    leaf = "fadeIn",
    enabled = true,
    speed = 1.73,
    bezier = "almostLinear",
})

hl.animation({
    leaf = "fadeOut",
    enabled = true,
    speed = 1.46,
    bezier = "almostLinear",
})

hl.animation({
    leaf = "border",
    enabled = true,
    speed = 3.0,
    bezier = "easeOutQuint",
})

hl.animation({
    leaf = "fade",
    enabled = true,
    speed = 2.8,
    bezier = "quick",
})

hl.animation({
    leaf = "layersIn",
    enabled = true,
    speed = 2.4,
    bezier = "easeOutQuint",
    style = "popin 87%",
})

hl.animation({
    leaf = "layersOut",
    enabled = true,
    speed = 2.4,
    bezier = "easeOutQuint",
    style = "popin 87%",
})

hl.animation({
    leaf = "fadeLayersIn",
    enabled = true,
    speed = 0.2,
    bezier = "quick",
})

hl.animation({
    leaf = "fadeLayersOut",
    enabled = true,
    speed = 1.8,
    bezier = "easeOut",
})

hl.animation({
    leaf = "workspaces",
    enabled = true,
    speed = 2,
    bezier = "easeOut",
    style = "slide",
})

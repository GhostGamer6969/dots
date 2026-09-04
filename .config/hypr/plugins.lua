if hl.plugin.hyprglass then
    local hg = hl.plugin.hyprglass

    hg.config({
        default_theme = "dark",
        default_preset = "glass",
        tint_color = 0x8899aa22,

        brightness = 0.9,
        dark = {
            brightness = 0.82,
        },
        light = {
            adaptive_boost = 0.5,
        },

        layers = {
            enabled = 1,
        },
    })

    hg.preset("clear", {
        glass_opacity = 0.8,
        blur_strength = 1.5,
        dark = {
            brightness = 0.7,
        },
        light = {
            brightness = 1.2,
        },
    })

    hg.preset("contrasted", {
        inherits = "high_contrast",
        contrast = 1.2,
        adaptive_dim = 1.5,
        dark = {
            tint_color = 0x02142aa9,
        },
    })

    hg.layer("swaync-control-center", {
        preset = "glass",
        mask_threshold = 0.3,
    })
    hg.layer("waybar", {
        preset = "glass",
        mask_threshold = 0.05,
    })
    hg.layer("swaync-notification-window", {
        preset = "glass",
        mask_threshold = 0.3,
    })
    hg.layer("swaync", {
        preset = "glass",
    })
    hg.layer("quickshell:bezel", {
        preset = "ui",
        mask_threshold = 0.3,
    })
    hg.layer("debug-panel", {
        exclude = true,
    })
end

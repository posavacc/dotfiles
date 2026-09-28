local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

hl.window_rule({
    name = "1.0 noctalia settings",
    match = {
        class = "^dev.noctalia.Noctalia$",
        title = "^Noctalia Settings$",
    },

    scrolling_width = 1.0
})

hl.window_rule({
    name = "1.0 width firefox",
    match = {
        class = "^firefox$",
        title = "^Mozilla Firefox$",
    },

    scrolling_width = 1.0
})

hl.window_rule({
    name = "1.0 width obsidian",
    match = {
        class = "^md.obsidian.Obsidian$",
    },

    scrolling_width = 1.0
})

hl.window_rule({
    name = "no border when only",
    match = { workspace = "w[t1]" },
    border_size = 0,
})

hl.layer_rule({
    name = "noctalia blur",
    match = {
        namespace = "noctalia-bar-default",
    },

    blur = true,
    ignore_alpha = 0.8
})

hl.layer_rule({
    name = "rofi blur",
    match = {
        namespace = "rofi",
    },

    blur = true,
    ignore_alpha = 0.8
})

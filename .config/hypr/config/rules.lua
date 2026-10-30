hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})

hl.window_rule({
    name = "maximized border",
    match = { fullscreen_state_internal = 1 },
    border_size = 0
})

-- no gaps when only 1 window
hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
hl.workspace_rule({ workspace = "f[1]",   gaps_out = 0, gaps_in = 0 })

hl.window_rule({
    name  = "no-gaps-wtv1",
    match = { float = false, workspace = "w[tv1]" },
    border_size = 0,
    rounding    = 0,
})

hl.window_rule({
    name  = "no-gaps-f1",
    match = { float = false, workspace = "f[1]" },
    border_size = 0,
    rounding    = 0,
})

-- hl.window_rule({
--     name = "no border when only",
--     match = { workspace = "w[t1]" },
--     border_size = 0,
-- })


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
    name = "1.0 width zen browser",
    match = {
        class = "^zen$",
        title = "^Zen Browser$",
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

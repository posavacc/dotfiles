hl.config({
    general = {
        gaps_in  = 0,
        gaps_out = 0,

        border_size = 0,

        col = {
            -- active_border   = { colors = {"#dedede", "#94c1e0"}, angle = 270 },
            -- active_border = "#94c1e0",
            active_border = "#a6a6a6ff",
            inactive_border = "#080808ff",
        },

        resize_on_border = false,

        allow_tearing = false,

        layout = "scrolling",
    },

    decoration = {
        rounding       = 0,
        rounding_power = 2,

        inactive_opacity = 0.97,

        shadow = {
            enabled      = false,
            range        = 16,
            render_power = 4,
            color        = "#0000086a",
        },

        blur = {
            enabled   = true,
            size      = 5,
            passes    = 2,
            vibrancy  = 0.1696,
        },
    },

    animations = {
        enabled = true,
    },
})

hl.config({
    scrolling = {
        fullscreen_on_one_column = false,
        explicit_column_widths = "0.5, 1.0",
        wrap_focus = false,
        wrap_swapcol = false,
        follow_min_visible = 0.1,
    },
})

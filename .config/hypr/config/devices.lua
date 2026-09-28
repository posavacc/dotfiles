hl.monitor({
    output   = "DP-2",
    mode     = "1920x1080@180",
    position = "0x-90",
    scale    = "1",
})


hl.config({
    input = {
        kb_layout  = "br,us",
        kb_variant = ",colemak_dh_iso",
        kb_options = "grp:alt_shift_toggle",

        repeat_rate = 75,
        repeat_delay = 250,

        follow_mouse = 1,

        sensitivity = -0.875,
        accel_profile = "flat",

        resolve_binds_by_sym = 1
    },
})


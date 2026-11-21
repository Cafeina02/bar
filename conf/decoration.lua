-- ~/.config/hypr/conf/decoration.lua

hl.config({
    decoration = {
        rounding = 10,

        blur = {
            enabled = true,
            size = 8,
            passes = 3,
            noise = 0.02,
            vibrancy = 0.2,
        },

        shadow = {
            enabled = true,
            range = 4,
            render_power = 3,
        },

    },
})

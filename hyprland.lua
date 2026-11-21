require("conf.env")
require("conf.decoration")
require("conf.animations")

mainMod = "SUPER"

-- Monitores y apps iniciales
hl.monitor({
    output = "eDP-1",
    mode = "1920x1080@144",
    position = "0x0",
    scale = 1,
})

hl.monitor({
    output = "HDMI-A-1",
    mode = "preferred",
    position = "auto",
    scale = 1,
    mirror = "eDP-1", -- Cambia eDP-1 por el nombre exacto de tu pantalla principal si es distinto
})

hl.on("hyprland.start", function()
    hl.exec_cmd("quickshell -c mainBAR -d")
    hl.exec_cmd("awww-daemon")
    hl.exec_cmd("jamesdsp --tray")
    hl.exec_cmd("hypridle")
end)

-- Input básico
hl.config({
    input = {
        kb_layout = "us,latam",
        kb_options = "grp:alt_shift_toggle", -- alt + shift cambio de idioma
        follow_mouse = 1,
        sensitivity = 0,
        touchpad = {
            natural_scroll = false,
        },
    },
})

hl.config({
    dwindle = {
        preserve_split = true,
    },
})

hl.config({
    misc = {
        force_default_wallpaper = -1,
        disable_hyprland_logo = true,
    },
})

hl.config({
    general = {
        gaps_in = 3,  -- Espacio ENTRE ventanas
        gaps_out = 10, -- Espacio entre las ventanas y los bordes de la pantalla/barra
        border_size = 1,
        col = {
            active_border = activeBorderColor,
            inactive_border = inactiveBorderColor,
        },
    },
})


require("conf.bindings")

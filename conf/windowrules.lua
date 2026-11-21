-- ~/.config/hypr/conf/windowrules.lua
-- Migrado desde conf/windowrules.conf
-- (Este archivo no estaba siendo "source"-ado en tu hyprland.conf original,
-- así que Hyprland nunca lo estaba aplicando. Lo dejo listo por si querés
-- agregarlo con require("conf.windowrules") en hyprland.lua)

-- Transparencia fija para la terminal y el lanzador
hl.window_rule({
    name = "kitty-opacity",
    match = { class = "^(kitty)$" },
    opacity = "0.90 0.90",
})

hl.window_rule({
    name = "rofi-opacity",
    match = { class = "^(rofi)$" },
    opacity = "0.90 0.90",
})

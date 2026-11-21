-- ~/.config/hypr/conf/animations.lua

hl.config({
    animations = {
        enabled = true,
    },
})

-- Curvas bezier
-- easeOutCubic: arranca rápido y frena suave al final, sin sentirse lenta
hl.curve("easeOutCubic", { type = "bezier", points = { {0.33, 1}, {0.68, 1} } })
hl.curve("linear", { type = "bezier", points = { {0, 0}, {1, 1} } })

-- Ventanas: aparición/desaparición suave con un leve "pop"
hl.animation({ leaf = "windows", enabled = true, speed = 6, bezier = "easeOutCubic" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 6, bezier = "easeOutCubic", style = "popin 90%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 5, bezier = "easeOutCubic", style = "popin 90%" })

-- Fade de ventanas (aparecer/desaparecer opacidad)
hl.animation({ leaf = "fadeIn", enabled = true, speed = 5, bezier = "easeOutCubic" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 5, bezier = "easeOutCubic" })

-- Cambio de workspace: deslizamiento suave
hl.animation({ leaf = "workspaces", enabled = true, speed = 6, bezier = "easeOutCubic", style = "slide" })

-- Bordes
hl.animation({ leaf = "border", enabled = true, speed = 6, bezier = "easeOutCubic" })

-- ~/.config/hypr/conf/bindings.lua

-- --- MULTIMEDIA / AUDIO (Teclas de volumen del teclado) ---
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("pamixer -i 5"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("pamixer -d 5"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("pamixer -t"), { locked = true })

-- --- BRILLO DE PANTALLA (laptop) ---
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl set 5%-"), { locked = true, repeating = true })

-- --- EDITOR DE CODIGO IDE (IDE con Super + E) ---
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("code"))

-- --- ATAJOS DE TECLADO ---
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd("kitty"))
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + M", hl.dsp.exit())
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen())
-- menu apps
hl.bind("SUPER + r", hl.dsp.exec_cmd("quickshell -c mainBAR ipc call launcher toggle"))

-- Mover ventanas
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.move({ direction = "down" }))

-- Espacios de trabajo (1 al 10)
for i = 1, 10 do
    local key = i % 10 -- 10 mapea a la tecla 0
    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Mouse
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Capturas de pantalla

-- 1. Seleccionar área o ventana → Copiar al portapapeles
hl.bind("Print", hl.dsp.exec_cmd('grim -g "$(slurp)" - | wl-copy'))

-- 2. Seleccionar área o ventana → Editar en Swappy (flechas, texto, guardar)
hl.bind("SHIFT + Print", hl.dsp.exec_cmd('grim -g "$(slurp)" - | swappy -f -'))

-- 3. Pantalla completa → Copiar al portapapeles
hl.bind("CTRL + Print", hl.dsp.exec_cmd("grim - | wl-copy"))

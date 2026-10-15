require "palette"
require "sprites"

function loop(frame)
    
    for i = 1, #Palette do
        local color = Palette[i]
        ui.palset(i - 1, color)
    end

    ui.clip(0,0,480,270)
    ui.camera(0,0)
    ui.cls(Palette.hex(0x45283c))
    ui.print("Hello, bot!", 32, 32, Palette.hex(0xFFFFFF))
    ui.print("Hello, bot2!", 32, 32, Palette.hex(0xFFFFFF))
    ui.print("Hello, bot3FUCK!", 32, 32, Palette.hex(0xFFFFFF))
end 
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
    i = 0
    while i < 10 do
        ui.print("Hello, bot!", 32, 32, Palette.hex(0xFFFFFF))
        i=i+1
    end
end 
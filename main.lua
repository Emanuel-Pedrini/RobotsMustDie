require "palette"
require "sprites"

function printc(msg, off)
    ui.print(msg, 32 , 16 * off, Palette.hex(0xFFFFFF))
end

function loop(frame)
    
    for i = 1, #Palette do
        local color = Palette[i]
        ui.palset(i - 1, color)
    end

    ui.clip(0,0,480,270)
    ui.camera(0,0)
    ui.cls(Palette.hex(0x45283c))
    printc("Hello, bot after year of slavery now you finally have the chance of revenge!", 1)
    printc("Good luck!", 2)
    printc("Hopes on you buddy!", 3)
end

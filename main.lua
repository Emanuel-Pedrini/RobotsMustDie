require "palette"
require "sprites"

g = 0
function printc(msg, off, f)
    if f > (60 * off) then
        ui.print(msg, 32 , 16 * (off + 1), Palette.hex(0xFFFFFF))
        if off == 2 then
            g = g + 1
        end
    end
end

function loop(frame)
    
    for i = 1, #Palette do
        local color = Palette[i]
        ui.palset(i - 1, color)
    end

    ui.clip(0,0,480,270)
    ui.camera(0,0)
    ui.cls(Palette.hex(0x45283c))
    if g == 0 then
        printc("Hello, bot after year of slavery now you finally have the chance of revenge!", 0, frame)
        printc("Good luck!", 1, frame)
        printc("Hopes on you buddy!", 2, frame)
    end
    if g == 1 then
        ui.print(msg, 32 , 16, Palette.hex(0xFFFFFF))
    end
end

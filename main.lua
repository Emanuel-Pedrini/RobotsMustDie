require "palette"
require "sprites"

cc = 1
function printc(msg)
    ui.print(msg, 32, 32 * cc, Palette.hex(0xFFFFFF))
    c=c+1
end

function loop(frame)
    
    for i = 1, #Palette do
        local color = Palette[i]
        ui.palset(i - 1, color)
    end

    ui.clip(0,0,480,270)
    ui.camera(0,0)
    ui.cls(Palette.hex(0x45283c))
    printc("hello, world!")
end

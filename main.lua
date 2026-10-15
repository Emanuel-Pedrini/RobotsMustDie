require "palette"
require "sprites"

player = {x = 0, y = 0}
sp = 5
g = 0
function printc(msg, off, f)
    if f > (60 * off) then
        ui.print(msg, 16 , 16 * (off + 1), Palette.hex(0xFFFFFF))
        if off == 3 then
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
        printc("Hello, robot fella! after year of slavery now you finally have the chance of revenge!", 0, frame)
        printc("Good luck!", 1, frame)
        printc("Hopes on you buddy!", 2, frame)
        printc("", 3, frame)
    end
    if g == 1 then
        main_state()
    end
end

function main_state()
    ui.tile(Sprites.TilemapLupi, 0, player.x, player.y)
    if ui.btn(DOWN) then player.y = player.y + sp end
    if ui.btn(UP) then player.y = player.y - sp end

    if ui.btn(LEFT) then player.x = player.x - sp end
    if ui.btn(RIGHT) then player.x = player.x + sp end
end

local modules = peripheral.wrap("back")
local canvas3d = modules.canvas3d()
local brightness = 256*0.3
while true do
canvas3d.clear()
blockgrid = canvas3d.create()
local scan = modules.scan()
for i,v in ipairs(scan) do
    if string.find(v.name, "_ore") or v.name == "minecraft:ancient_debris" then
        print(v.x, v.y, v.z, v.name)
        local box = blockgrid.addBox(v.x-0.5, v.y-0.5, v.z-0.5)
        box.setDepthTested(false)
        if v.name == "minecraft:coal_ore" or v.name == "minecraft:deepslate_coal_ore" then
            box.setColor(20,20,20,brightness)
        elseif v.name == "minecraft:copper_ore" or v.name == "minecraft:deepslate_copper_ore" then
            box.setColor(204,109,57,brightness)
        elseif v.name == "minecraft:iron_ore" or v.name == "minecraft:deepslate_iron_ore" then
            box.setColor(161,157,148,brightness)
        elseif v.name == "minecraft:diamond_ore" or v.name == "minecraft:deepslate_diamond_ore" then
            box.setColor(149,222,216,brightness)
        elseif v.name == "minecraft:emerald_ore" or v.name == "minecraft:deepslate_emerald_ore" then
            box.setColor(168,242,155,brightness)
        elseif v.name == "minecraft:redstone_ore" or v.name == "minecraft:deepslate_redstone_ore" then
            box.setColor(224,83,67,brightness)
        elseif v.name == "minecraft:lapis_ore" or v.name == "minecraft:deepslate_lapis_ore" then
            box.setColor(53,73,222,brightness)
        elseif v.name == "minecraft:gold_ore" or v.name == "minecraft:deepslate_gold_ore" or v.name == "minecraft:nether_gold_ore" then
            box.setColor(232,227,74,brightness)
        elseif v.name == "minecraft:ancient_debris" then
            box.setColor(107,66,74,brightness)
        else
            box.setColor(255,255,255,brightness)
        end
    end
end
sleep(2)
end


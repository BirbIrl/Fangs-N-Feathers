local fnv = ...
while true do
    while turtle.getFuelLevel() < 200 do
        turtle.select(2)
        fuelitems = turtle.getItemSpace()
        if fuelitems > 1 then
            turtle.refuel(fuelitems-1)
        else
            print("Out of fuel!!")
        end
        turtle.select(1)
    end
    local inspect, data = turtle.inspect()
    if inspect then
            if data.name == "minecraft:spruce_log" then
                turtle.dig()
                turtle.forward()
            local height = 0
            while turtle.digUp() do
                turtle.up()
                height = height+1
            end
            turtle.turnLeft()
            turtle.turnLeft()
            for i=1, fnv.wayBackLength, 1 do
                turtle.forward()
            end
            turtle.turnLeft()
            turtle.turnLeft()
            for i=1, height, 1 do
                turtle.digDown()
                turtle.down()
            end
            for i=1, fnv.wayBackLength-1, 1 do
                turtle.forward()
            end
            turtle.place()
        end
    end
    sleep(1)
end
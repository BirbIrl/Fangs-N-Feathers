
-- akshdakjsdaj
--tree offset
x = -4
y = 0
z = 0
local scanner = peripheral.find("manipulator")
peripheral.find("modem", rednet.open)


while true do
--distribute the code
local script = io.open("/4xtreechop.lua",r)
local contents = script:read("a")
script:close()
rednet.broadcast({
    name = "treechop";
    instance = 0;
    type = "code";
    variables = {
        wayBackLength = 2;
    };
    contents = contents
}, "feathernet")

--check if tree has grown
scan = scanner.scan()
for i,v in ipairs(scan) do
    if v.x == x and v.y == y and v.z == z then
        if string.find(v.name, "log") then
            print("tree grown! sending signal!")
            rednet.broadcast({
                name = "treechopsignal";
                instance = 0;
                type = "signal";
                variables = {};
                contents = true;
            }, "feathernet")
        else
            print("tree hasn't grown yet", v.name)
        end
    end
end

sleep(0.25)
end

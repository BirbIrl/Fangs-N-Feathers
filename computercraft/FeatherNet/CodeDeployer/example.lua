peripheral.find("modem", rednet.open)
while true do
rednet.broadcast({
    name = "treefarm";
    instance = 0;
    type = "code";
    variables = {
        wayBackLength = 2;
    };
    contents = io.open("/4xtreechop.lua",r ):read("a");
}, "feathernet")
sleep(10)
end
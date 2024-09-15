--v: 1.0
local listento = {
    instance = 0;
    name = "treechop";
}
 
while true do
    peripheral.find("modem", rednet.open)
    id, message = rednet.receive("feathernet")
    if message.instance == listento.instance and message.name == listento.name then
        local fnv = {}
        if message.variables then
            fnv = message.variables
            fnv.instance = listento.instance
            fnv.name = listento.name
        end
        if message.type == "code" then
            status, err = pcall(load(message.contents), fnv)
        end
        if message.type == "trigger" then
            --stuff
        end
    end
end
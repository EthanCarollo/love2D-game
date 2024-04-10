local serpent = require("lib.serpent")

local FileManager = {}

function FileManager.saveObjectInstanceData(obj, filename)
    local serializedObj = serpent.line(obj)
    local file = io.open(filename, "w")
    file:write(serializedObj)
    file:close()
end

function FileManager.loadObjectInstanceData(filename)
    local file = io.open(filename, "r")
    if not file then
        return nil, "File not found"
    end
    local serializedObj = file:read("*all")
    file:close()

    -- Deserialize the object instance
    local obj, err = load("return " .. serializedObj)
    if not obj then
        return nil, "Failed to deserialize object: " .. err
    end

    return obj()
end

return FileManager
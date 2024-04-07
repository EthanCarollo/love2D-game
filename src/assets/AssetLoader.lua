local GWrapper2D = require("src.graphics.gwrapper.GWrapper2D")
local json = require("lib.dkjson")
local AssetLoader = {}
local instance = nil

function AssetLoader:getInstance()
    if instance == nil then
        instance = setmetatable({assets = nil}, { __index = AssetLoader })
    end
    return instance
end

function AssetLoader:getImage(name)
    for key, value in pairs(self.assets) do
        if value["name"] == name then
            return value["image"]
        end
    end
end

function AssetLoader:loadImage(path)
    return GWrapper2D:getInstance():loadImage(path)
end

function AssetLoader:loadJson(path)
    local contents, _ = love.filesystem.read(path) -- Read the file
    if contents == nil then
        return nil -- File not found or couldn't be read
    end
    local result = json.decode(contents)["data"]
    for key, value in pairs(result) do
        value["image"] = self:loadImage(value["path"])
    end
    self.assets = result
end

return AssetLoader
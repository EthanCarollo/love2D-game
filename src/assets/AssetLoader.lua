local GWrapper2D = require("src.graphics.gwrapper.GWrapper2D")

local Assetloader = {}
local instance = nil

function Assetloader:getInstance()
    if instance == nil then
        instance = setmetatable({}, { __index = Assetloader })
    end
    return instance
end

function Assetloader:loadImage(path)
    return GWrapper2D:getInstance():loadImage(path)
end

return Assetloader
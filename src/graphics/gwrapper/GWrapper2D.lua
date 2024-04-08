GWrapperLove2D = require("src.graphics.gwrapper.delegate.GWrapperLove2D")

local GWrapper2D = {}
local instance = nil

function GWrapper2D:getInstance()
    if instance == nil then
        instance = setmetatable({
            delegate = GWrapperLove2D:new()
        }, { __index = GWrapper2D })
    end
    return instance
end

function GWrapper2D:loadImage(path)
   return self.delegate:loadImage(path)
end

function GWrapper2D:showImage(image, positionX, positionY, rotation, scaleX, scaleY)
    self.delegate:showImage(image, positionX, positionY, rotation, scaleX / image:getWidth(), scaleY / image:getHeight())
end

return GWrapper2D
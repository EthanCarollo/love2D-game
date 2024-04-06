GWrapperDelegate2D = require("src.graphics.gwrapper.delegate.GWrapperDelegate2D")

-- GWrapperDelegateLove2D is a child of GWrapperDelegate2D
GWrapperLove2D = {}

function GWrapperLove2D:new()
    newObj = GWrapperDelegate2D:new()
    self.__index = self
    return setmetatable(newObj, self)
end

function GWrapperLove2D:loadImage(path)
    local image = love.graphics.newImage(path)
    return image
end

function GWrapperLove2D:showImage(image, positionX, positionY, rotation, scaleX, scaleY)
    love.graphics.draw(image, positionX, positionY, rotation, scaleX, scaleY)
end

return GWrapperLove2D
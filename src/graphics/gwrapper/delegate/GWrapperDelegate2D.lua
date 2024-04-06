GWrapperDelegate2D = {}

function GWrapperDelegate2D:new()
    newObj = { }
    self.__index = self
    return setmetatable(newObj, self)
end

function GWrapperDelegate2D:loadImage(path)
    print("Error, this function should be implemented")
end

function GWrapperDelegate2D:showImage(image, positionX, positionY, scaleX, scaleY)
    print("Error, this function should be implemented")
end

return GWrapperDelegate2D
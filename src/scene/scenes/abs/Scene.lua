local Scene = {}

function Scene:new()
    newObj = { }
    self.__index = self
    return setmetatable(newObj, self)
end

function Scene:enter()
    print("Error, this function should be implemented")
end

function Scene:update(dt)
    print("Error, this function should be implemented")
end

function Scene:draw()
    print("Error, this function should be implemented")
end

function Scene:exit()
    print("Error, this function should be implemented")
end

return Scene
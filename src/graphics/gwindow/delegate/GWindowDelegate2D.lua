GWindowDelegate2D = {}

function GWindowDelegate2D:new()
    newObj = { }
    self.__index = self
    return setmetatable(newObj, self)
end

function GWindowDelegate2D:setup()
    print("Error, this function should be implemented")
end

return GWindowDelegate2D
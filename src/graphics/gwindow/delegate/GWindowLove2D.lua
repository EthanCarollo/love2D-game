GWindowDelegate2D = require("src.graphics.gwindow.delegate.GWindowDelegate2D")

-- GWindowLove2D is a child of GWindowDelegate2D
GWindowLove2D = {}

function GWindowLove2D:new()
    newObj = GWrapperDelegate2D:new()
    self.__index = self
    return setmetatable(newObj, self)
end

function GWindowLove2D:setup()
    -- Set window title
    love.window.setTitle("Bouncing Ball")
    -- Set window dimensions
    love.window.setMode(800, 600)
    -- Set background color
    love.graphics.setBackgroundColor(0.5, 0.5, 0.5)
end

function GWindowLove2D:getWidth()
    return love.window.getWidth()
end

function GWindowLove2D:getHeight()
    return love.window.getHeight()
end


return GWindowLove2D
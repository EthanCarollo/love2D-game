GWindowLove2D = require("src.graphics.gwindow.delegate.GWindowLove2D")

local GWindow = {}
local instance = nil

function GWindow:getInstance()
    if instance == nil then
        instance = setmetatable({
            delegate = GWindowLove2D:new()
        }, { __index = GWindow })
    end
    return instance
end

function GWindow:setup()
    self.delegate:setup()
end

function GWindow:getWidth()
    self.delegate:getWidth()
end

function GWindow:getHeight()
    self.delegate:getHeight()
end

return GWindow
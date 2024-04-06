local GWindow = {}
local instance = nil

function GWindow:getInstance()
    if instance == nil then
        instance = setmetatable({}, { __index = GWindow })
    end
    return instance
end

function GWindow:setup()
    -- Set window title
    love.window.setTitle("Bouncing Ball")
    -- Set window dimensions
    love.window.setMode(800, 600)
    -- Set background color
    love.graphics.setBackgroundColor(0.5, 0.5, 0.5)
end

return GWindow
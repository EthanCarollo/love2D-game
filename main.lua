local GWindow = require("src.graphics.gwindow.GWindow")
local GWrapper2D = require("src.graphics.gwrapper.GWrapper2D")
local Assetloader = require("src.assets.AssetLoader")
local myImage = nil

-- Load function, called once at the beginning of the game
function love.load()
    GWindow:getInstance():setup()
    myImage = Assetloader:getInstance():loadImage("assets/test.png")
end

-- Update function, called every frame
function love.update(dt)

end

-- Draw function, called every frame after update
function love.draw()
    GWrapper2D.getInstance():showImage(myImage, 100, 100, 0, 0.1, 0.1)
end
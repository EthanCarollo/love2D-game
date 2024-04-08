local GWindow = require("src.graphics.gwindow.GWindow")
local GWrapper2D = require("src.graphics.gwrapper.GWrapper2D")
local AssetLoader = require("src.assets.AssetLoader")

-- Load function, called once at the beginning of the game
function love.load()
    GWindow:getInstance():setup()
    AssetLoader:getInstance():loadJson("data/assets.json")

    shaderFile = love.filesystem.read('shader/testShader.glsl')
    shader = love.graphics.newShader(shaderFile)
end

-- Update function, called every frame
function love.update(dt)
    shader:send('iResolution', { 1280, 720, 1 })
    shader:send("iTime", love.timer.getTime())
end

-- Draw function, called every frame after update
function love.draw()
    love.graphics.setShader(shader)
    GWrapper2D:getInstance():showImage(AssetLoader:getInstance():getImage("test"), 0, 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
    love.graphics.setShader()
    
end
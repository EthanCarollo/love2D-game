local GWindow = require("src.graphics.gwindow.GWindow")
local AssetLoader = require("src.assets.AssetLoader")
local SceneManager = require("src.scene.SceneManager")
local TestScene = require("src.scene.scenes.TestScene")
local FileManager = require("src.file.FileManager")

-- Load function, called once at the beginning of the game
function love.load()
    GWindow:getInstance():setup()
    AssetLoader:getInstance():loadImageJson("data/assets.json")
    SceneManager:getInstance():addScene(TestScene:new())
    SceneManager:getInstance():setup()
end

-- Update function, called every frame
function love.update(dt)
    SceneManager:getInstance():update(dt)
end

-- Draw function, called every frame after update
function love.draw()
    SceneManager:getInstance():draw()
end
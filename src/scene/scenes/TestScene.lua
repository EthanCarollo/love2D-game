local Scene = require("src.scene.scenes.abs.Scene")
local GWrapper2D = require("src.graphics.gwrapper.GWrapper2D")
local AssetLoader = require("src.assets.AssetLoader")

local TestScene = {}

-- TestScene is a child of Scene
function TestScene:new()
    newObj = Scene:new()
    newObj.caca = "test"
    self.__index = self
    return setmetatable(newObj, self)
end

function TestScene:enter()

end

function TestScene:update(dt)

end

function TestScene:draw()
    GWrapper2D:getInstance():showImage(AssetLoader:getInstance():getImage("test"), 100, 100, 0, 150, 150)
end

function TestScene:exit()

end

return TestScene
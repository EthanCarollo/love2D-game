local SceneManager = {}
local instance = nil

function SceneManager:getInstance()
    if instance == nil then
        instance = setmetatable({
            scenes = {},
            actualScene = nil
        }, { __index = SceneManager })
    end
    return instance
end

function SceneManager:setup()
    self.actualScene = self.scenes[1]
end

function SceneManager:update(dt)
    self.actualScene.update(dt)
end

function SceneManager:draw()
    self.actualScene.draw()
end

function SceneManager:addScene(scene)
    table.insert(self.scenes, scene)
end

return SceneManager
local Matter = require(ReplicatedStorage.Common.Matter)
local World = Matter.World.new()
local GameLoop = Matter.Loop.new(World)

local systems = {}
for _, child in ipairs(script.systems:GetChildren()) do
  if child:IsA("ModuleScript") then
    table.insert(systems, require(child))
  end
end

GameLoop:scheduleSystems(systems)

local RunService = game:GetService("RunService")

GameLoop:begin({
  default = RunService.Heartbeat
})

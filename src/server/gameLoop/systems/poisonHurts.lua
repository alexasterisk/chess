local Components = require(script.Parent.components)
local Health = Components.Health
local Poison = Components.Poison

local function poisonHurts(World)
  for id, health in world:query(Health, Poison) do
    World:insert(id, health:patch({
      value = health.value - 0.1
    }))
  end
end

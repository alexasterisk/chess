local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Matter = require(ReplicatedStorage.Common.Matter)

return {
  Health = Matter.component(),
  Poison = Matter.component()
}

local hud = lib.load("config.client.hud")
local idlecamera = lib.load("config.client.idlecamera")
local pickups = lib.load("config.client.pickups")

---@description HUD COMPONENTS DISABLER
for component, size in ipairs(hud) do
    SetHudComponentSize(component, size.x, size.y)
end

---@description IDLE CAMERA DISABLER
DisableIdleCamera(idlecamera.afk)
DisableVehiclePassengerIdleCamera(idlecamera.vehicle)

---@description PLAYER PICKUPS DISABLER
for hash, toggle in ipairs(pickups) do
    ToggleUsePickupsForPlayer(cache.playerId, hash, toggle)
end
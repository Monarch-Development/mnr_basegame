local hud = lib.load("config.client.hud")
local idlecamera = lib.load("config.client.idlecamera")

---@description HUD COMPONENTS DISABLER
for component, size in ipairs(hud) do
    SetHudComponentSize(component, size.x, size.y)
end

---@description IDLE CAMERA DISABLER
DisableIdleCamera(idlecamera.afk)
DisableVehiclePassengerIdleCamera(idlecamera.vehicle)
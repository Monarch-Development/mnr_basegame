local dispatch = lib.load("config.client.dispatch")
local hud = lib.load("config.client.hud")
local idlecamera = lib.load("config.client.idlecamera")
local pickups = lib.load("config.client.pickups")
local scenarioGroups = lib.load("config.client.scenariogroups")
local scenarioTypes = lib.load("config.client.scenariotypes")


---@description DISPATCH SERVICES DISABLER
local maxWantedLevel = GetConvarInt("mnr:maxWantedLevel", 0)

SetMaxWantedLevel(maxWantedLevel)

for service, toggle in ipairs(dispatch) do
    EnableDispatchService(service, toggle)
end

---@description IDLE CAMERA DISABLER
DisableIdleCamera(idlecamera.afk)
DisableVehiclePassengerIdleCamera(idlecamera.vehicle)

---@description HUD COMPONENTS DISABLER
for component, size in ipairs(hud) do
    SetHudComponentSize(component, size.x, size.y)
end

---@description PLAYER PICKUPS DISABLER
for hash, toggle in ipairs(pickups) do
    ToggleUsePickupsForPlayer(cache.playerId, hash, toggle)
end

---@description SCENARIO GROUPS DISABLER
for scenarioGroup, toggle in pairs(scenarioGroups) do
    SetScenarioGroupEnabled(scenarioGroup, toggle)
end

---@description SCENARIO TYPES DISABLER
for scenarioType, toggle in pairs(scenarioTypes) do
    SetScenarioTypeEnabled(scenarioType, toggle)
end

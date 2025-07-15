assert(GetResourceState("ox_lib") == "started", "[ERROR]: This resource needs ox_lib to work correctly, ensure to start it before this script")

local nameNow = GetCurrentResourceName()
local expectedName = GetResourceMetadata(nameNow, "name")

lib.versionCheck(("Monarch-Development/%s"):format(expectedName))

AddEventHandler("onResourceStart", function(resourceName)
    if nameNow ~= resourceName then return end

    if nameNow ~= expectedName then
        print(("^1[WARNING]: The resource name is incorrect. Please set it to %s.^0"):format(expectedName))
    end
end)

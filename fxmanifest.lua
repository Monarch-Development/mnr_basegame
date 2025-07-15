fx_version "cerulean"
game "gta5"
lua54 "yes"

name "mnr_basegame"
description "Basegame adapter for RP Gamemode"
author "IlMelons"
version "1.0.0"
repository "https://github.com/Monarch-Development/mnr_basegame"

shared_scripts {
    "@ox_lib/init.lua",
}

client_scripts {
    "config/client/*.lua",
    "client/*.lua",
}

server_scripts {
    "server/*.lua",
}
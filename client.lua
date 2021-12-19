
-- Example {title="ChangeMe", colour=0, id=326, x = -796.58, y = -220.59, z = 37.07},

-- for blips and color id's https://docs.fivem.net/docs/game-references/blips/

local blips = {

-- Misc {title="", colour=0, id=1, x =  , y = , z = },
{title="Yellow Jack", colour=5, id=496, x = 1986.52, y = 3049.19, z = 47.22},
{title="Fire Station", colour=1, id=60, x = 1693.36, y = 3590.21, z = 35.62},
{title="Prison", colour=0, id=285, x = 1690.47, y = 2594.92, z = 45.56},
{title="Strip Clup", colour=48, id=121, x =  126.55, y = -1289.25, z = 29.28},
{title="Weed Farm", colour=2, id=496, x = 2204.58, y = 5578.34, z = 53.81},

-- Properties

{title="Property", colour=5, id=492, x = -841.25, y = -25.13, z = 40.4},
{title="Property", colour=5, id=492, x = 1375.07, y = 1147.61, z = 113.91},
{title="Property", colour=5, id=492, x = 1214.4, y = -666.24, z = 62.58},

-- Police Stations {title="", colour=0, id=1, x =  , y = , z = },

{title="Police Station", colour=38, id=60, x = 442.18, y = -983.14, z = 30.1},
{title="Police Station", colour=38, id=60, x =  -1094.83, y = -836.18, z = 38.06},
{title="Police Station", colour=38, id=60, x =  825.62, y = -1290.11, z = 28.24},
{title="Police Station", colour=38, id=60, x =  -560.62, y = -133.38, z = 38.08},
{title="Police Station", colour=38, id=60, x =  1853.82, y = 3686.43, z = 34.27},
{title="Police Station", colour=38, id=60, x =  -445.8, y = 6014.2, z = 31.71},

-- Hospitals {title="", colour=0, id=1, x =  , y = , z = },

{title="Hospital", colour=2, id=61, x =  306.58, y = -1435.32, z = 29.8},
{title="Hospital", colour=2, id=61, x =  305.0, y = -583.0, z = 50.0},
{title="Hospital", colour=2, id=61, x =  -463.67, y = -338.42, z = 34.5},
{title="Hospital", colour=2, id=61, x =  1828.13, y = 3667.26, z = 34.28},

--Ammunations {title="", colour=0, id=1, x =  , y = , z = },

{title="Ammu-Nation", colour=1, id=110, x =  21.13, y = -1108.0, z = 29.79},
{title="Ammu-Nation", colour=1, id=110, x =  812.37, y = -2157.64, z = 29.61},
{title="Ammu-Nation", colour=1, id=110, x =  -663.57, y = -939.91, z = 21.82},
{title="Ammu-Nation", colour=1, id=110, x =  2569.44, y = 300.06, z = 108.73},
{title="Ammu-Nation", colour=1, id=110, x =  -1310.64, y = -392.84, z = 36.69},
{title="Ammu-Nation", colour=1, id=110, x =  248.45, y = -47.13, z = 69.94},
{title="Ammu-Nation", colour=1, id=110, x =  -1115.16, y = 2695.98, z = 18.55},
{title="Ammu-Nation", colour=1, id=110, x =  1696.98, y = 3754.87, z = 34.7},
{title="Ammu-Nation", colour=1, id=110, x =  -327.41, y = 6080.03, z = 31.45},
{title="Ammu-Nation", colour=1, id=110, x =  -3167.55, y = 1084.48, z = 20.83},
{title="Ammu-Nation", colour=1, id=110, x =  843.89, y = -1027.62, z = 28.19},

--Stores {title="", colour=0, id=1, x =  , y = , z = },
{title="Store", colour=2, id=59, x =  1159.44, y = -323.77, z = 69.21},
{title="Store", colour=2, id=59, x =  1166.78, y = 2708.1, z = 38.15},
{title="Store", colour=2, id=59, x =  544.5, y = 2669.01, z = 42.15},
{title="Store", colour=2, id=59, x =  1393.15, y = 3602.0, z = 34.98},
{title="Store", colour=2, id=59, x =  -1225.3, y = -905.1, z = 12.33},
{title="Store", colour=2, id=59, x =  -3041.25, y = 589.09, z = 7.91},
{title="Store", colour=2, id=59, x =  -2970.96, y = 309.88, z = 15.04},
{title="Store", colour=2, id=59, x =  1701.72, y = 4927.75, z = 42.06},
{title="Store", colour=2, id=59, x =  -50.7, y = -1755.71, z = 29.42},
{title="Store", colour=2, id=59, x =  -3241.03, y = 1004.56, z = 12.83},
{title="Store", colour=2, id=59, x =  2680.96, y = 3282.95, z = 55.24},
{title="Store", colour=2, id=59, x =  1964.67, y = 3741.8, z = 32.34},
{title="Store", colour=2, id=59, x =  -1488.68, y = -381.17, z = 40.16},
{title="Store", colour=2, id=59, x =  377.0, y = 324.88, z = 103.57},
{title="Store", colour=2, id=59, x =  2558.06, y = 385.81, z = 108.62},
{title="Store", colour=2, id=59, x =  29.04, y = -1347.47, z = 29.5},

}

    

Citizen.CreateThread(function()

  for _, info in pairs(blips) do

    info.blip = AddBlipForCoord(info.x, info.y, info.z)

    SetBlipSprite(info.blip, info.id)

    SetBlipDisplay(info.blip, 4)

    SetBlipScale(info.blip, 1.0)

    SetBlipColour(info.blip, info.colour)

    SetBlipAsShortRange(info.blip, true)

  BeginTextCommandSetBlipName("STRING")

    AddTextComponentString(info.title)

    EndTextCommandSetBlipName(info.blip)

  end

end)

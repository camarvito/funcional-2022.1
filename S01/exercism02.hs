module LuciansLusciousLasagna (elapsedTimeInMinutes, expectedMinutesInOven, preparationTimeInMinutes) where

-- TODO: define the expectedMinutesInOven constant
expectedMinutesInOven = 40

-- TODO: define the preparationTimeInMinutes function
preparationTimeInMinutes numLayers = numLayers * 2

-- TODO: define the elapsedTimeInMinutes function
elapsedTimeInMinutes numLayers timeInOven = (preparationTimeInMinutes numLayers) + timeInOven

--first lets make binary converter :D

-- if x - y >= 0, y = true
-- How do we know which y to start at?

-- start y from 1 and multiply by 2 until y >= x

local toConvert = 16

local binaryPlaces = {}

local i = 0

while(i < toConvert) do
    i = i * 2
    if ( i > toConvert ) then break end
end


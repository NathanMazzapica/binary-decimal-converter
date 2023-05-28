
--first lets make binary converter :D

-- if x - y >= 0, y = true
-- How do we know which y to start at?

-- start y from 1 and multiply by 2 until y >= x

local toConvert = 18

local binaryPlaces = { 1 }

local i = 1

while( i < toConvert ) do
    i = i * 2
    if ( i > toConvert ) then break end
    table.insert( binaryPlaces, i )
end

function PrintTable( tableToPrint )
    for k, v in ipairs( tableToPrint ) do
        print( v )
    end
end

PrintTable( binaryPlaces )


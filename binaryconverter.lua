
--first lets make binary converter :D

-- if x - y >= 0, y = true
-- How do we know which y to start at?

-- start y from 1 and multiply by 2 until y >= x

local toConvert = 6

local binaryPlaces = { 1 }

local binaryDigit = 1


while( binaryDigit < toConvert ) do
    binaryDigit = binaryDigit * 2
    if ( binaryDigit > toConvert ) then break end
    table.insert( binaryPlaces, 1, binaryDigit )
end


local binaryString = ""
for k, v in ipairs( binaryPlaces ) do
    if ( toConvert - v >= 0 ) then
        toConvert = toConvert - v
        binaryString = binaryString .. "1"
    else
        binaryString = binaryString .. "0"
    end
end



print(binaryString)

-- util function
function PrintTable( tableToPrint )
    for k, v in ipairs( tableToPrint ) do
        print( v )
    end
end


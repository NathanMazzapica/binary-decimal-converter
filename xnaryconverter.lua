-- okay now its time to make the x<10-nary converter. 
-- Will work for any base x system... theoretically... as long as the number to convert is less than the step
-- So I guess that makes it an xnary converter? No clue.

local natesutils = require("natesutils")

local toConvert = 100

local numericPlaces = { 1 }

local initialDigit = 1

local step = 6

-- 11 in base 4
--1 4 16
--3 2

-- 32 in base 4
--1 4 16
--0 0 2

while( initialDigit < toConvert ) do
    initialDigit = initialDigit * step
    if ( initialDigit > toConvert ) then break end
    table.insert( numericPlaces, 1, initialDigit )
end


local resultString = ""
for k, place in ipairs( numericPlaces ) do
    local foundMatch = false
    for i = step - 1, 1, -1 do
        
        local check = (place * i)
        local result = toConvert - check

        
        if ( result >= 0 and not foundMatch ) then

            toConvert = result
            resultString = resultString .. tostring(i)
            foundMatch = true
            
        elseif ( i == 1 and result <= 0 and not foundMatch ) then -- we need to append trailing zeros. if answer is found
            
            print( "appending 0" )
            resultString = resultString .. "0"
        end
        if ( toConvert <= 0 ) then 
            for j = k, #numericPlaces - k do
                resultString = resultString .. "0"
            end

            break

        end
    end
end





print("Result : " .. resultString)


natesutils.PrintTable(numericPlaces)

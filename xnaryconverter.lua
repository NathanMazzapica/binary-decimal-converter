-- okay now its time to make the x<10-nary converter. 
--Will work for any number system up to 9

local toConvert = 32

local numericPlaces = { 1 }

local initialDigit = 1

local step = 4

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
        if( toConvert <= 0 ) then break end
        local check = (place * i)
        local result = toConvert - check

        print( "i am at place " .. place )
        print( "i am checking " .. check )
        print( "result is " .. result )
        
        if ( result >= 0 and not foundMatch ) then
            print("I found a match!")
            toConvert = result
            resultString = resultString .. tostring(i)
            foundMatch = true
            
        elseif ( i == 1 and result <= 0 and not foundMatch ) then -- we need to append trailing zeros
            
            print( "appending 0" )
            resultString = resultString .. "0"
        end
    end
end





print("Result : " .. resultString)

-- util function
function PrintTable( tableToPrint )
    for k, v in ipairs( tableToPrint ) do
        print( v )
    end
end

PrintTable(numericPlaces)

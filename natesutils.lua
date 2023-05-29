-- util function
local function PrintTable( tableToPrint )
    local toPrint = ""
    for k, v in ipairs( tableToPrint ) do
        toPrint = toPrint .. v .. " "
    end
    print("Digits : " .. toPrint)
end


return {
    PrintTable = PrintTable
}
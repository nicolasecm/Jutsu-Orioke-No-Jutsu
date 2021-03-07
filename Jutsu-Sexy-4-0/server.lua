local tiempo = 3500
 
addCommandHandler("jutsu-sexy",
function( sourcePlayer )
if isPedInVehicle(sourcePlayer) then outputChatBox("Estas en un vehiculo no puedes usar jutsus.",sourcePlayer,0,0,0,false) return end
if isObjectInACLGroup("user." .. getAccountName(getPlayerAccount(sourcePlayer)), aclGetGroup("Jutsus.invocacion")) then
if (getTickCount ( ) - tiempo > 10000) then
if exports["Chacrka_system"]:ischakraSuficientePara(sourcePlayer,40) then
exports["Chacrka_system"]:Diminuirchakra(sourcePlayer,40)
tiempo = getTickCount ( )
local x, y, z = getElementPosition ( sourcePlayer )
outputChatBox ( "!Oiroke no Jutsu¡", sourcePlayer, 0, 0, 0, false )
triggerClientEvent (sourcePlayer, "TextoinvoOrioke", sourcePlayer)
triggerClientEvent (sourcePlayer, "SonidoinvoOrioke", sourcePlayer)
objeto = createObject( 2780, x + 0.8, y, z - 2, 0, 0, 0) 
setTimer(destroyElement, 1800, 1, objeto)
setPedAnimation( sourcePlayer , "freeweights", "gym_free_pickup", -1, true, false, false )
setTimer (
        function ( )
            setPedAnimation(sourcePlayer,'BOMBER','BOM_Plant_2Idle',-1,false,false,false,false)
        end
        ,2100, 1
    )
setTimer (
        function ( )
            ped = createPed ( 286, x + 1, y, z, 0, true  )
			setPedAnimation( ped, "KISSING", "BD_GF_Wave", -1, true, false, false )
			setTimer(destroyElement, 7000, 1, ped)
			setElementFrozen(ped, true)
        end
        ,3000, 1
    )
else
outputChatBox("No tiene chakra suficiente!",sourcePlayer,0,0,0,false)
end
else
outputChatBox("Debes esperar 10 segundos para poder utilizar este jutsu!",sourcePlayer,255,0,0,false)
end
else
outputChatBox("No puedes usar los jutsus de invocacion",sourcePlayer,0,0,0,false)
end end)
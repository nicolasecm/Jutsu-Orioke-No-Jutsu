local tunaColor = tocolor(0, 0, 0, 255)

function SonidoOrioke ()
setTimer (
        function ( )
		local sound = playSound("edoo.mp3",false)
		setSoundVolume(sound, 1) 
        end
        ,3000, 1
)	
end
addEvent ("SonidoinvoOrioke", true)
addEventHandler ("SonidoinvoOrioke", root, SonidoOrioke)


function Oriokeinvotext(p)
		addEventHandler ("onClientRender", getRootElement(), textDxEnma)
	    setTimer(function() removeEventHandler("onClientRender",getRootElement(),textDxEnma) end,8000,1)
end
addEvent ("TextoinvoOrioke", true)
addEventHandler ("TextoinvoOrioke", root, Oriokeinvotext)

function textDxEnma ()
		dxDrawText("!Oiroke no Jutsu¡", 212, 611, 820, 646, tunaColor, 0.90, "pricedown", "center", "center", false, false, true, false, false)
end
-- This program displays objects that
-- when touched reacted and do something
-- Johnathan M ICS20
-- Touch and Drag

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--background image
local backgroundImage = display.newImageRect("Images/background.jpg", 1920, 1920)

	--centers the background image
	backgroundImage.x = display.contentWidth/2
	backgroundImage.y = display.contentWidth/2


local linkchar = display.newImageRect("Images/linkchar.png", 800, 400)
	linkchar.x = 500
	linkchar.y = 500


local shirt = display.newImageRect("Images/shirt.png", 300, 300)
local shirtWidth = shirt.width
local shirtHeight = shirt.height

-- variables to keep track of which object I touched first
local alreadyTouchedshirt = false

-- sets x and y for 
shirt.x = 400
shirt.y = 700

local function shirtListener(touch)

	if (touch.phase == "began") then
		if (alreadyTouchedpants == false) then
			alreadyTouchedshirt = true	

		end

	end

	if  ( (touch.phase == "moved") and (alreadyTouchedshirt == true) ) then
		shirt.x = touch.x 
		shirt.y = touch.y

	end

	if (touch.phase == "ended") then
		alreadyTouchedshirt = false	
		alreadyTouchedpants = false	

	end

end

-- add the respective listeners to each object
shirt:addEventListener("touch", shirtListener)


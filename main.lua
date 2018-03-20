-- This program displays objects that
-- when touched reacted and do something
-- Johnathan M ICS20
-- Touch and Drag

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)


local Ting = audio.loadSound("Sounds/ding.mp3")
local playTing
local optionsTing = 
{
	channel = 1,
	duration = 1000
}
audio.setVolume ( 1, optionsTing)

local backgroundMusic = audio.loadSound ("Sounds/Party.mp3")
local backgroundMusicChannel
local optionsbackgroundMusic =
{
	channel = 2
}
audio.setVolume ( 0.01, optionsbackgroundMusic)
--	backgroundMusicChannel = audio.play (backgroundMusic)



--background image
local backgroundImage = display.newImageRect("Images/background.jpg", 1920, 1920)

	--centers the background image
	backgroundImage.x = display.contentWidth/2
	backgroundImage.y = display.contentWidth/2


local linkchar = display.newImageRect("Images/linkchar.png", 860, 750)
	linkchar.x = display.contentWidth/2
	linkchar.y = display.contentHeight/2


local shirt = display.newImageRect("Images/shirt.png", 300, 200)
local shirtWidth = shirt.width
local shirtHeight = shirt.height

-- variables to keep track of which object I touched first
local alreadyTouchedshirt = false

-- sets x and y for shirt
shirt.x = -100
shirt.y = 800

local function shirtListener(touch)

	if (touch.phase == "began") then
		if (alreadyTouchedpants == false) then
			alreadyTouchedshirt = true	
			playTing = audio.play(Ting)

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

-- listener for shirt object
shirt:addEventListener("touch", shirtListener)


local pants = display.newImageRect("Images/pants.png", 300, 300)
local pantsWidth = pants.width
local pantsHeight = pants.height

-- variables to keep track of which object I touched first
local alreadyTouchedpants = false

-- sets x and y for pants
pants.x = 1000
pants.y = 800

local function pantsListener(touch)

	if (touch.phase == "began") then
		if (alreadyTouchedshirt == false) then
			alreadyTouchedpants = true	
			playTing = audio.play(Ting)

		end

	end

	if  ( (touch.phase == "moved") and (alreadyTouchedpants == true) ) then
		pants.x = touch.x 
		pants.y = touch.y

	end

	if (touch.phase == "ended") then
		alreadyTouchedpants = false	
		alreadyTouchedshirt = false	

	end

end

-- listener for pants object
pants:addEventListener("touch", pantsListener)

local commandtext = display.newText ("Dress Link up!", display.contentWidth/2, 200, "Images/vinet.ttf", 140)
	commandtext:setFillColor (1, 0.2, 0)

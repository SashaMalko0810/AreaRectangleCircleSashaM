-- Title: AreaOfRectangleAndCircle
-- Name: Sasha Malko
-- Course: ICS2O/3C
-- This program displays a rectangle and has a text object 
--that calculates its area and displays it. Then I added a 
--circle and another text object that calculates its area 
--and displays it.

--create my local variables
local areaText
local textSize = 50
local myRectangle
local widthOfRectangle = 150
local heightOfRectangle = 100
local areaOfRectangle
local areaTextC
local myCircle
local radiusOfCircle = 200
local PI = 3.14
local areaOfCircle

--set the backgroud colour of my screen. Rememeber that colors are between 0 and 1.
display.setDefault("background", 143/255, 240/255, 255/255)

--to remove status bar
display.setStatusBar(display.HiddenStatusBar)

--draw the rectangle that is half the width and the height of the screen.
myRectangle = display.newRect(0, 0, widthOfRectangle, heightOfRectangle)

--anchor the rectangle in the top left corner of the screen and set its (x,y) position
myRectangle.anchorX = 0
myRectangle.anchorY = 0
myRectangle.x = 20
myRectangle.y = 20

--set the width of the border
myRectangle.strokeWidth = 10

--set the colour of the rectangle
myRectangle:setFillColor(1, 0.1, 0.4)

--set the colour of the border
myRectangle:setStrokeColor(0.4, 1, 0.4)

--calculate the area
areaOfRectangle = widthOfRectangle * heightOfRectangle

--write the area on the screen. Take into consideration the size of the font when positioning it on the screen
areaText = display.newText("The area of this rectangle with a width of \n" ..
	widthOfRectangle .. " and a height of " .. heightOfRectangle .. " is " .. 
	areaOfRectangle .. " pixels^2. ",0, 0, Arial, 24)

--anchor the text and set its (x,y) position
areaText.anchorX = 0
areaText.anchorY = 0
areaText.x = 20
areaText.y = display.contentHeight/2

--set the colour of the newText
areaText:setTextColor(0, 0, 0)

--draw the circle 
myCircle = display.newCircle(400, 100, 30)

--set the colour of the circle
myCircle:setFillColor(1, 0.1, 0.4)

--set the width of the border
myCircle.strokeWidth = 10

--set the colour of the border
myCircle:setStrokeColor(0.4, 1, 0.4)

--calculate the area
areaOfCircle = PI * radiusOfCircle^2

--write the area on the screen. Take into consideration the size of the font when positioning it on the screen
areaTextC = display.newText("The area of this circle with a radius of \n" ..
	radiusOfCircle .. " is " .. areaOfCircle .. " pixels^2. ",210, 250, Arial, 24)

--set the colour of the newText
areaTextC:setTextColor(0, 0, 0)
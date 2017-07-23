Player = Object:extend()
function Player:new()
	self.image = love.graphics.newImage("Assets/panda.png")
	self.x = 300
	self.y = 20
	self.speed = 500
	self.width = self.image:getWidth()
end 

function Player:update(dt)
	if love.keyboard.isDown("a") then
		self.x = self.x - (self.speed * dt)
	end
	if love.keyboard.isDown("d") then
		self.x = self.x + (self.speed * dt)
	end
	--make a variable for the window width
	local window_width = love.graphics.getWidth()
	--restrain the player to the window
	if self.x < 0 then
		self.x = 0
	elseif self.x > window_width-self.width then
		self.x = window_width-self.width
	end

end

function Player:keyPressed(key)
    --If the spacebar is pressed
    if key == "space" then
        --Put a new instance of Bullet inside listOfBullets.
        table.insert(listOfBullets, Bullet(self.x, self.y))
    end
end



function Player:draw()
	love.graphics.draw(self.image, self.x, self.y)
end

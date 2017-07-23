Enemy = Object:extend()

function Enemy:new()

end

function Enemy:new()
	self.image = love.graphics.newImage("Assets/snake.png")
	self.x = 325
	self.y = 450
	self.speed = 100
	self.width = self.image:getWidth()
	self.height = self.image:getHeight()
end

function Enemy:update(dt)
	self.x = self.x + (self.speed * dt)
	local window_width = love.graphics.getWidth()

	if self.x < 0 then
		self.speed = self.speed * -1
	elseif 
		self.x > (window_width - self.width) then 
		self.speed = self.speed * -1
		end

end

function Enemy:draw()
	love.graphics.draw(self.image,self.x,self.y)
end

local class = require 'middleclass'

local Tile = class("Tile")

function Tile:initialize(id, x, y, width, height)
	self.id = id
	self.x = x 
	self.y = y 
	self.width = width 
	self.height = height
	self.img = img or nil 
	self.onClick = function(self, x, y, button, istouch) if self:inRange(x, y) then self.clicked = true end end 
	self.onRelease = function(self, x, y, button, istouch) self.clicked = false end 
	self.mousemoved = function(self, x, y, dx, dy) end 
	self.wheelmoved = function(self, x, y) end
	self.color = {255,255,255}
	self.textColor = {255,255,255}
	self.clicked = false
	self.defaults = {}
	self:save()
end 

function Tile:save()
	for k, v in pairs(self) do 
		self.defaults[k] = v 
	end 
end

function Tile:getid()
	return self.id 
end 

function Tile:load()

end 

function Tile:update(dt)

end 

function Tile:draw()
	love.graphics.setColor(self.color)
	love.graphics.rectangle('line', self.x, self.y, self.width, self.height)
	love.graphics.setColor(self.textColor)
	love.graphics.print(self.id, self.x, self.y)
end 

function Tile:inRange(x, y)
	return self.x < x and x < self.x + self.width and self.y < y and y < self.y + self.height
end 

return Tile
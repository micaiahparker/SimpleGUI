local class = require 'middleclass'
local Tile = require 'tile'

local Drag = class('Drag', Tile)

function Drag:initialize(id, x, y, width, height)
	Tile:initialize(id, x, y, width, height)
	self.mousemoved = function(self, x, y, dx, dy)
		if love.mouse.isDown(1) and self.clicked then 
			self.x = self.x + dx 
			self.y  = self.y + dy
		end 
	end 
end

return Drag
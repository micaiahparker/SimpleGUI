local class = require 'middleclass'
local Tile = require 'tile'
local Drag = require 'drag'

GUI = class('GUI')
GUI.Tile = Tile 
GUI.Drag = Drag

function GUI:initialize()
	self.objects = {}
end

function GUI:load()
	for i, v in ipairs(self.objects) do 
		v:load()
	end 
end 

function GUI:update(dt)
	for i, v in ipairs(self.objects) do 
		v:update(dt)
	end 
end 

function GUI:draw()
	for i, v in ipairs(self.objects) do 
		v:draw()
	end 
end 

function GUI:add(object)
	table.insert(self.objects, object)
end

function GUI:remove(object)
	table.remove(self.objects, object)
end

function GUI:mousemoved(x, y, dx, dy)
	for i, v in ipairs(self.objects) do 
		v:mousemoved(x, y, dx, dy)
	end 
end 

function GUI:wheelmoved(x, y)
	for i, v in ipairs(self.objects) do 
		v:wheelmoved(x, y)
	end 
end 

function GUI:onClick(x, y, button, istouch)
	for i, v in ipairs(self.objects) do 
		v:onClick(x, y, button, istouch)
	end 
end 

function GUI:onRelease(x, y, button, istouch)
	for i, v in ipairs(self.objects) do 
		v:onRelease(x, y, button, touch)
	end 
end

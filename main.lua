require 'gui'

function love.load()
	gui = GUI:new()
	tile = GUI.Tile:new('test', 0, 0, 100, 100)
	drag = GUI.Drag:new('drag', 300, 300, 100, 100)
	gui:add(tile)
	gui:add(drag)
end 

function love.update(dt)
	gui:update(dt)
end 

function love.draw() 
	gui:draw()
end 

function love.mousepressed(x, y, button, istouch)
	gui:onClick(x, y, button, istouch)
end 

function love.mousereleased(x, y, button, istouch)
	gui:onRelease(x, y, button, istouch)
end 

function love.mousemoved(x, y, dx, dy)
	gui:mousemoved(x, y, dx, dy)
end 

function love.wheelmoved(x, y)
	gui:wheelmoved(x, y)
end 

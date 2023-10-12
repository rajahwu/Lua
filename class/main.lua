--[[
function love.load()
    Object = require "classic"
    require "shape"
    require "rectangle"
    require "circle"

    r1 = Rectangle(100, 100, 200, 50)
    r2 = Circle(350, 80, 40)

    monster = love.graphics.newImage("monster.png")
    love.graphics.setBackgroundColor(1,1,1)
    width = monster:getWidth()
    height = monster:getHeight()
end

function love.update(dt)
    r1:update(dt)
    r2:update(dt)
end

function love.draw()
    r1:draw()
    r2:draw()

    love.graphics.setColor(1, 0.78, 0.15, 0.5)
    love.graphics.draw(monster, 100, love.graphics.getHeight() - 300, 0, 2, 3, width/2, height/2)
    love.graphics.setColor(0,0,0)
end
--]]
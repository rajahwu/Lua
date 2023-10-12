--[[
function love.load()
    tick = require "tick"
    target = {}
    target.x = 300
    target.y = 300
    target.radius = 50
    
    rect = {}
    rect.x = 100
    rect.y = 100
    rect.width = 70
    rect.height = 90
    rect.speed = 100
    
    fruits = { "apple", "banana" }
    table.insert(fruits, "pear")
    
    score = 0
    timer = 0
    
    gameFont = love.graphics.newFont(40)
end

function createRect()
    rect = {}
    rect.x = math.random(100, 500)
    rect.y = 100
    rect.width = 70
    rect.height = 90
    rect.speed = 100
end

function love.update(dt)
    tick.update(dt)
    if love.keyboard.isDown("right") then
        rect.x = rect.x + 5 * (dt * rect.speed)
    elseif love.keyboard.isDown("left") then
        rect.x = rect.x - 5 * (dt * 100)
    end
end

function love.draw()
    love.graphics.rectangle("line", rect.x, rect.y, rect.width,rect.height)

    love.graphics.setColor(1, 0, 0)
    love.graphics.circle("fill", target.x, target.y, target.radius)

    love.graphics.setColor(1, 1, 1)
    love.graphics.setFont(gameFont)
    love.graphics.print(score, 0, 0)

    for i,frt in ipairs(fruits) do
        love.graphics.print(frt, 100, 100 + 50 * i)
    end
end

function love.keypressed(key)
    if key == "space" then
        createRect()
    end
end

function love.mousepressed(x, y, button, istouch, presses)
    if button == 1 then
        local mouseToTarget = distanceBetween(x, y, target.x, target.y)
        if mouseToTarget < target.radius then
            score = score + 1
            target.x = math.random(target.radius, love.graphics.getWidth() - target.radius)
            target.y = math.random(target.radius, love.graphics.getHeight() - target.radius)
        end
    end
end

function distanceBetween(x1, y1, x2, y2)
    return math.sqrt((x2 - x1) ^ 2 + (y2 - y1) ^ 2)
end

local hello = require "example"
print(hello)
--]]
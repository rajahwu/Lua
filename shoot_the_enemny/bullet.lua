Bullet = Object:extend()

function Bullet:new(x, y)
    self.x = x
    self.y = y
    self.speed = 700
    self.width = 5
    self.height = 15
end

function Bullet:update(dt)
    self.y = self.y + self.speed * dt
end

function Bullet:draw()
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end
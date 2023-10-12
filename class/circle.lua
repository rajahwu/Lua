Circle = Shape:extend()

function Circle:new(x, y, raduis)
    self.x = x
    self.y = y
    self.raduis = raduis
    self.speed = 50
end

function Circle:draw()
    love.graphics.circle("line", self.x, self.y, self.raduis)
end

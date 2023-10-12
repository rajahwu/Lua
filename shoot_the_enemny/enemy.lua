Enemy = Object:extend()

function Enemy:new()
    self.x = 325
    self.y = 550
    self.speed = 100
    self.width = 35
end

function Enemy:update(dt)
    self.x = self.x + self.speed * dt

    local window_width = love.graphics.getWidth()

    if self.x < self.width then
        self.x = self.width
        self.speed = -self.speed
    elseif self.x + self.width > window_width then
        self.x = window_width - self.width
        self.speed = -self.speed
    end
end


function Enemy:draw()
    love.graphics.circle("fill", self.x, self.y, self.width)
end
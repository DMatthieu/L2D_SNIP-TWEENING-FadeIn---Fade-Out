require "tweening"

function love.load()
    alpha = 0
 
    teamSplashScreen = love.graphics.newImage("T713_logo.jpg")
    trMenuScreen = love.graphics.newImage("logo_fiche.png")

 end

 function love.update(dt)

    if love.keyboard.isDown("a") then
        if alpha < 0 then 
            alpha = 0
        else
            alpha = alpha - 0.01
        end
    elseif love.keyboard.isDown("z") then
        if alpha > 1 then 
            alpha = 1
        else
            alpha = alpha + 0.01
        end
    end

    fadeInAndOut(1, 1, 1, dt)

 end

 function love.draw(dt)
    love.graphics.setColor(255, 255, 255, alpha)
    love.graphics.draw(teamSplashScreen, 0, 0)

    love.graphics.setColor(100, 100, 100)
    love.graphics.print("alpha= "..alpha, 20, 280)
    
    love.graphics.reset()
 end
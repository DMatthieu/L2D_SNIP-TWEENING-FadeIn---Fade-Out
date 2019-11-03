require "custom_libs/tweening"
require "custom_libs/timer"

function love.load()
   alpha = 0
   splash_timer = 0
    
   teamSplashScreen = love.graphics.newImage("img/T713_logo.jpg")
   trMenuScreen = love.graphics.newImage("img/logo_fiche.png")


 end

 function love.update(dt)
   update_timer(splash_timer, dt)

   fadeInAndOut(1, 1, 1, dt)

   --Quit game with ESCAPE
   if love.keyboard.isDown("escape") then
      love.event.quit()
   end

 end

 function love.draw(dt)
   love.graphics.setColor(255, 255, 255, alpha)
   love.graphics.draw(teamSplashScreen, 0, 0)
   love.graphics.reset()

   love.graphics.print(splash_timer, 10, 10)

    
 end
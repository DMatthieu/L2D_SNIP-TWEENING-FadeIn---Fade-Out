local timer = 0 -- Ne pas retirer !!!!!!!!!!!
function fadeInAndOut(timeLimitFadeIn, timeLimitIdle, timeLimitFadeOut, dt) 
    
    timer = timer + dt --le timer s'incrémente de 1 toutes les secondes
    --dt étant calculé par Löve2D en fonction de la puissance de la machine
    --temps mis pour faire un 1 FPS en secondes = (1 / dt)  =D
    
    --Si le timer est inferieur à le temps aloué a l'apparition
    if timer < timeLimitFadeIn then
        if alpha >1 then
            alpha = 1
        else
            alpha = alpha + dt
        end
    --Si Timer compris entre Tps d'apparition ET Tps d'apparition + Tps Image Idle...   
    elseif timer >= timeLimitFadeIn and timer < timeLimitFadeIn + timeLimitIdle then
        alpha = 1
    --Si Timer > aux temps des deux premières phases et > à Tps des trois phases reunies    
    elseif timer > timeLimitFadeIn + timeLimitIdle and timer<= timeLimitFadeIn + timeLimitIdle + timeLimitFadeOut then
        alpha = alpha - dt
    --Si Timer > à Tps total de l'annimation (pour faire plus propre au debug de la var Timer..)    
    elseif  timer > (timeLimitFadeIn + timeLimitIdle + timeLimitFadeOut) then 
        alpha = 0
    end

    --DEBUG CONSOLE
    print("Tweening Timer = "..timer)

    return timer
end


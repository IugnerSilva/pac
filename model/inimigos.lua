

local Inimigo = {}

function Inimigo:inimigos(event)
      inimigo = {}
      inimigo2 = {}

      for i=1,2 do
      inimigo[i] = display.newImageRect("inimigo.png",17,17)
      fisica.addBody(inimigo[i],"dynamic")
      inimigo[i].name = "inimigo"

      inimigo[i].x = math.random(20,300)
      inimigo[i].y = math.random(60)
    end  
    for i=1,2 do
      inimigo2[i] = display.newImageRect("inimigo.png",17,20)
      fisica.addBody(inimigo2[i],"dynamic")
      inimigo2[i].name = "inimigo"

      inimigo2[i].x = math.random(30,300)
      inimigo2[i].y = math.random(200,350)
    end      

      
      for i=1,#inimigo2 do
        inimigo2[i]:addEventListener("collision", mover)
       

      end
      for i=1,#inimigo do
        inimigo[i]:addEventListener("collision", mover)
        

      end

      numero = math.random(4)
end


function Inimigo:inimigoCima()
      
      for i=1,#inimigo do
     if(inimigo[i].y ~= nil )then
      inimigo[i].y = inimigo[i].y + 5
      inimigo[i].rotation = 0 
      end  
      end

      for i=1,#inimigo2 do
     if(inimigo2[i].x ~= nil)then
      inimigo2[i].x = inimigo2[i].x - 5
      inimigo2[i].rotation = 0  
      end 
      end
end  
   
function Inimigo:inimigoBaixo(event)
  
  for i=1,#inimigo do    
    if(inimigo[i].y ~= nil)then
      inimigo[i].y = inimigo[i].y - 5
      inimigo[i].rotation = 0 
      end     
end
for i=1,#inimigo2 do  
    if(inimigo2[i].y ~= nil )then  
      inimigo2[i].y = inimigo2[i].y + 5
      inimigo2[i].rotation = 0 
      end     
end

end

function Inimigo:inimigoDireita()
   for i=1,#inimigo do
    if(inimigo[i].x ~= nil)then
     inimigo[i].x = inimigo[i].x -5
     inimigo[i].rotation = 0  
     end 
    end
     for i=1,#inimigo2 do
      if(inimigo2[i].x ~= nil)then
     inimigo2[i].x = inimigo2[i].x +5
     inimigo2[i].rotation = 0  
     end 
    end
end

function Inimigo:inimigoEsquerda()
      for i=1,#inimigo2 do
        if(inimigo2[i].y ~= nil)then
      inimigo2[i].y = inimigo2[i].y -5
      inimigo2[i].rotation = 0 
    end
    end
    for i=1,#inimigo do
      if(inimigo[i].x ~= nil)then
      inimigo[i].x = inimigo[i].x +5
      inimigo[i].rotation = 0   
    end
  end
end


function Inimigo:mover(event)

numero = math.random(4)

  if(numero == 1)then

           if(comecar ~= nil )then
              timer.pause(comecar)
          end

    comecar = timer.performWithDelay(100,inimigoDireita,-1)
    

   elseif(numero == 2)then
          if(comecar ~= nil )then
              timer.pause(comecar)
          end

      comecar = timer.performWithDelay(100,inimigoBaixo,-1)
      

      elseif(numero == 3)then

        if(comecar ~= nil )then
              timer.pause(comecar)
          end
                       
        comecar = timer.performWithDelay(100,inimigoCima,-1)
        

       elseif(numero ==  4)then
          
          if(comecar ~= nil )then
              timer.pause(comecar)
          end
          comecar= timer.performWithDelay(100,inimigoEsquerda,-1)
          
end        
end  

return Inimigo


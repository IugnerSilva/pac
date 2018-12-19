
local fisica = require("physics")
local inimigo = require("model.inimigos")
local bolas = require("model.comida")




 Pacman = {}
 
 function adcfisica()
   fisica.addBody(jogador,"dynamic")
 end

vida = 3


function Pacman:vidasTela(  )
    vidas = display.newText("Vidas: "..vida,230,-30)
end

function Pacman:mostrarVida(vida)
       
        vidas.text ="Vidas: "..vida 
    
       end

      


function Pacman:collision(event)

    if (event.phase == "began") then
        if(event.other.name == "bolas")then
          print("colidiu")

                pontuacao = pontuacao + 10
                display.remove(event.other)
                Jogo:mostrarPontos(pontuacao)
                print (pontuacao)
    
           elseif(event.other.name == "inimigo")then

            vida = vida - 1
            display.remove(event.target)
          
            Pacman:mostrarVida(vida)
            timer.cancel(comecarMover)
              print(vida)

            
            if vida ~= 0 then
              jogador = display.newImageRect("direita.png",17,18)
              
              jogador.name = "jogador"
              jogador:addEventListener("collision", Pacman)
              jogador.x = 150
              jogador.y = 105
              temp = timer.performWithDelay(10,adcfisica,1)


            

            else
                Jogo:perdeu()
              end
            end
        end

        if(pontuacao == 1460)then
             composer.removeScene("view.pacman")
             Jogo:ganhou()          

        end 
    
end

function Pacman:player()
      
      jogador = display.newImageRect("direita.png",17,18)
      fisica.addBody(jogador,"dynamic")
      jogador.name = "jogador"
      jogador:addEventListener("collision", Pacman)
      jogador.x = 150
      jogador.y = 115
end

function moverCima(event)
    if(jogador.y ~= nil)then
      jogador.rotation = -90
      jogador:setLinearVelocity(0,-50)

    end
end  
   
function moverBaixo(event)
    if(jogador.y ~= nil)then
       jogador.rotation = 90
       jogador:setLinearVelocity(0,50)
    end
       
end

function moverDireita(event)
  
  if(jogador.x ~= nil)then
    jogador.rotation = 0
    jogador:setLinearVelocity(50,0)
 end
     
end

function moverEsquerda(event)
    
    if(jogador.x ~= nil)then
      jogador.rotation = -180
      jogador:setLinearVelocity(-50,0)
    end

end
function Pacman:tap(event)

  if(event.target.name =="esquerda")then
    print("movendo")

            if(comecarMover ~= nil )then
                timer.pause(comecarMover)
            end
    comecarMover = timer.performWithDelay(1,moverEsquerda,0)
    

    elseif(event.target.name=="direita")then

            if(comecarMover ~= nil )then
                timer.pause(comecarMover)
            end
      comecarMover = timer.performWithDelay(1,moverDireita,0)
            
      
      elseif(event.target.name=="cima")then

            if(comecarMover ~= nil )then
                timer.pause(comecarMover)
            end
        comecarMover = timer.performWithDelay(1,moverCima,0)
                

        elseif(event.target.name =="baixo")then
          
          if(comecarMover ~= nil )then
              timer.pause(comecarMover)
          end

          comecarMover= timer.performWithDelay(1,moverBaixo,0)
                  
        
        end
   end


   function Pacman:remove()
            display.remove(jogador)
            timer.cancel(comecarMover)
      end
return Pacman
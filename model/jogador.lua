

local Pacman = {}

function Pacman:comer(event)

      if(event.other.name == "bolas")then

          display.remove(event.other)
          pontuacao = pontuacao + 10
          mostrarPontos(pontuacao)
          print(pontuacao)


        elseif(event.other.name == "inimigo")then
            perdeu()

        end

        if(pontuacao == 1460)then
         composer.removeScene("view.pacman")
        ganhou()          

        end

     
  end


function Pacman:player(event)
      
      jogador = display.newImageRect("direita.png",17,17)
      fisica.addBody(jogador,"dynamic")
      jogador.name = "jogador"
      jogador:addEventListener("collision", comer)
      jogador.x = 150
      jogador.y = 115

      return player
end


function Pacman:moverCima(event)
    if(jogador.y ~= nil)then
      jogador.rotation = -90
      jogador:setLinearVelocity(0,-50)
    end
end  
   
function Pacman:moverBaixo(event)
    if(jogador.y ~= nil)then
       jogador.rotation = 90
       jogador:setLinearVelocity(0,50)
    end
       
end

function Pacman:moverDireita(event)
  
  if(jogador.x ~= nil)then
    jogador.rotation = 0
    jogador:setLinearVelocity(50,0)
 end
     
end

function Pacman:moverEsquerda(event)
    
    if(jogador.x ~= nil)then
      jogador.rotation = -180
      jogador:setLinearVelocity(-50,0)
    end

end
function Pacman:moverjogador(event)

  if(event.target.name =="esquerda")then

            if(comecarMover ~= nil )then
                timer.pause(comecarMover)
            end
    comecarMover = timer.performWithDelay(100,moverEsquerda,0)
    comecarMover.param = event.target.name

    elseif(event.target.name=="direita")then

            if(comecarMover ~= nil )then
                timer.pause(comecarMover)
            end
      comecarMover = timer.performWithDelay(100,moverDireita,0)
            comecarMover.param = event.target.name
      
      elseif(event.target.name=="cima")then

            if(comecarMover ~= nil )then
                timer.pause(comecarMover)
            end
        comecarMover = timer.performWithDelay(100,moverCima,0)
                comecarMover.param = event.target.name

        elseif(event.target.name =="baixo")then
          
          if(comecarMover ~= nil )then
              timer.pause(comecarMover)
          end

          comecarMover= timer.performWithDelay(100,moverBaixo,0)
                  comecarMover.param = event.target.name
        
        end
      end

return Pacman
local composer = require( "composer" )
local scene = composer.newScene()
local menu = require("view.menu")
bd = require("model.banco")
local w = display.contentWidth
local h = display.contentHeight     


local butaoMenu 

function scene:create( event )
        local mostrarPontuacao = bd:pegarPontuacao()

        butaoMenu = display.newImageRect("Menu.png",80,40) 
        butaoMenu.x = w/2
        butaoMenu.y = 300
        
        butaoMenu:addEventListener("tap", menu)
        pontuacaoText = display.newText("Melhor Pontuação !",display.contentCenterX,15)


        for t,e in pairs(mostrarPontuacao) do
          for t1,e1 in pairs(e) do
            
            pontuacaoValor = display.newText(e1,display.contentCenterX,50)
            print()
         
          end

        end
           

end

function scene:destroy( event )

   
       display.remove(butaoMenu)
       display.remove(pontuacaoText)
       display.remove(pontuacaoValor)
        display.remove(e1)

end

function menu()
  composer.removeScene("view.recorde")
  composer.gotoScene( "view.menu" )
end

scene:addEventListener( "create", scene )
scene:addEventListener( "destroy", scene )

    return scene
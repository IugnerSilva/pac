local composer = require( "composer" )
local scene = composer.newScene() 
bd = require ("model.banco")
 jogo = require ("view.pacman")
local jogarButao
local recordeButao
local sairButao
local w = display.contentWidth

function scene:create( event )
    local group = self.view
    pac = display.newImageRect("pac.jpg",w,250)
    pac.x = 161
    pac.y = 100

    jogarButao = display.newImageRect("jogar.png",120,50)
         jogarButao.x = 161
         jogarButao.y = 230
     recordeButao = display.newImageRect("recorde.png",120,50)
         recordeButao.x = 161
         recordeButao.y = 290
     sairButao = display.newImageRect("sair.png",120,50)
         sairButao.x = 160
         sairButao.y = 350

         function scene:destroy( event )
	 
	       -- jogarButao:removeEventListener("tap",iniciar)
	        deletarTela()

		end

		function recorde()
			composer.gotoScene( "view.recorde" )
			 composer.removeScene("view.menu")
		end

		function deletarTela()
		    display.remove(sairButao)
		    display.remove(jogarButao)
		    display.remove(recordeButao)
		    display.remove(pac)
		end

		function iniciar()
		    composer.gotoScene("view.pacman")
		    composer.removeScene("view.menu")
		end

		function sair()
		 os.exit()
		end

    

       jogarButao:addEventListener("tap",iniciar)
       sairButao:addEventListener("tap",sair)
       recordeButao:addEventListener("tap",recorde)
end

scene:addEventListener( "create", scene )
scene:addEventListener( "destroy", scene )
return scene
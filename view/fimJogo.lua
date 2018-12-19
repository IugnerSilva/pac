local composer = require( "composer" )
local scene = composer.newScene() 
local novoButao
local menuButao
local sairButao
local w = display.contentWidth





function scene:create( event )
    local group = self.view
    over = display.newImageRect("over.jpg",w,250)
    over.x = 161
    over.y = 80

    novoButao = display.newImageRect("novo.png",120,50)
         novoButao.x = 161
         novoButao.y = 230
     menuButao = display.newImageRect("menu.png",120,50)
         menuButao.x = 161
         menuButao.y = 290
     sairButao = display.newImageRect("sair.png",120,50)
         sairButao.x = 160
         sairButao.y = 350

         function scene:destroy( event )
	 
	        novoButao:removeEventListener("tap",reiniciar)
	        sairButao:removeEventListener("tap",sair)
	        menuButao:removeEventListener("tap",menu)
	        deletarTela()

		end


		function deletarTela()
		    display.remove(sairButao)
		    display.remove(novoButao)
		    display.remove(menuButao)
		    display.remove(over)
		end


		function menu()
			composer.removeScene("view.fimJogo")
		    composer.gotoScene("view.menu")
		    
		end

		function reiniciar()
			composer.removeScene("view.fimJogo")
		    composer.gotoScene("view.pacman")
		    
		end

		function sair()
		 os.exit()
		end

    

       novoButao:addEventListener("tap",reiniciar)
       sairButao:addEventListener("tap",sair)
       menuButao:addEventListener("tap",menu)
end

scene:addEventListener( "create", scene )
scene:addEventListener( "destroy", scene )
return scene
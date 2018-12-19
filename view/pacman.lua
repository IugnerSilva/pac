local composer = require("composer")
local scene = composer.newScene()

local fisica = require("physics")
local inimigos = require("model.inimigos")
local bolas = require("model.comida")
local jogador = require("model.jogador")
bd= require ("model.banco")


physics.start()
physics.setGravity(0,0)
physics.setDrawMode("hybrid")
physics.setDrawMode("normal")

local w = display.contentWidth
local h = display.contentHeight
math.randomseed(os.time())


Jogo = {}

function scene:create()

linhas = {}
function Jogo:bordas()

    linhas[1] = display.newLine(0,-15,2*w,-15)
    linhas[1].strokeWidth = 3
        linhas[1]:setStrokeColor(0,1,1)

     linhas[2] = display.newLine(0,390,2*w,390)
     linhas[2].strokeWidth = 3
        linhas[2]:setStrokeColor(0,1,1)

      linhas[3] = display.newLine(5,390,5,-500)
      linhas[3].strokeWidth = 3
        linhas[3]:setStrokeColor(0,1,1)

       linhas[4] = display.newLine(313,390,313,-500)
       linhas[4].strokeWidth = 4
        linhas[4]:setStrokeColor(0,1,1)


       for i=1,#linhas do
          fisica.addBody(linhas[i],"static")

       end
end

ob = {}

function Jogo:obstaculos()
    
    ob[1] = display.newRect(50,-10,20,60)
    ob[1]. x = 45
    ob[1].y = 43
    ob[1]:setFillColor(0)
    ob[1].strokeWidth = 3
    ob[1]:setStrokeColor(0,1,1)

    ob[2] = display.newRect(50,-10,60,20)
    ob[2].x = 65
    ob[2].y = 23
    ob[2]:setFillColor(0)
    ob[2].strokeWidth = 3
    ob[2]:setStrokeColor(0,1,1)

    ob[3] = display.newRect(270,-10,20,60)
    ob[3].y = 43
    ob[3]:setFillColor(0)
    ob[3].strokeWidth = 3
    ob[3]:setStrokeColor(0,1,1)

    ob[4] = display.newRect(250,-10,60,20)
    ob[4].y = 23
    ob[4]:setFillColor(0)
    ob[4].strokeWidth = 3
    ob[4]:setStrokeColor(0,1,1)
    
    ob[5] = display.newRect(50,-10,50,20)
    ob[5].x = 157
    ob[5].y = 23
    ob[5]:setFillColor(0)
    ob[5].strokeWidth = 3
    ob[5]:setStrokeColor(0,1,1)

    ob[6] = display.newRect(50,-10,135,20)
    ob[6].x = 157
    ob[6].y = 70
    ob[6]:setFillColor(0)
    ob[6].strokeWidth = 3
    ob[6]:setStrokeColor(0,1,1)

    ob[7] = display.newRect(50,-10,135,20)
    ob[7].x = 157
    ob[7].y = 120
    ob[7]:setFillColor(0)
    ob[7].strokeWidth = 3
    ob[7]:setStrokeColor(0,1,1)

    ob[8] = display.newRect(50,-10,130,20)
    ob[8].x = 157
    ob[8].y = 245
    ob[8]:setFillColor(0)
    ob[8].strokeWidth = 3
    ob[8]:setStrokeColor(0,1,1)

    ob[9] = display.newRect(50,-10,25,60)
    ob[9].x = 45
    ob[9].y = 140
    ob[9]:setFillColor(0)
    ob[9].strokeWidth = 3
    ob[9]:setStrokeColor(0,1,1)

    ob[10] = display.newRect(50,-10,25,60)
    ob[10].x = 45
    ob[10].y = 230
    ob[10]:setFillColor(0)
    ob[10].strokeWidth = 3
    ob[10]:setStrokeColor(0,1,1)

    ob[11] = display.newRect(50,-10,60,20)
    ob[11].x = 65
    ob[11].y = 350
    ob[11]:setFillColor(0)
    ob[11].strokeWidth = 3
    ob[11]:setStrokeColor(0,1,1)

    ob[12] = display.newRect(50,-10,20,60)
    ob[12].x = 45
    ob[12].y = 318
    ob[12]:setFillColor(0)
    ob[12].strokeWidth = 3
    ob[12]:setStrokeColor(0,1,1)

    ob[13] = display.newRect(50,-10,20,60)
    ob[13].x = 270
    ob[13].y = 140
    ob[13]:setFillColor(0)
    ob[13].strokeWidth = 3
    ob[13]:setStrokeColor(0,1,1)

    ob[14] = display.newRect(50,-10,20,60)
    ob[14].x = 270
    ob[14].y = 230
    ob[14]:setFillColor(0)
    ob[14].strokeWidth = 3
    ob[14]:setStrokeColor(0,1,1)

    ob[15] = display.newRect(50,-10,60,20)
    ob[15].x = 250
    ob[15].y = 350
    ob[15]:setFillColor(0)
    ob[15].strokeWidth = 3
    ob[15]:setStrokeColor(0,1,1)

    ob[16] = display.newRect(50,-10,20,60)
    ob[16].x = 270
    ob[16].y = 318
    ob[16]:setFillColor(0)
    ob[16].strokeWidth = 3
    ob[16]:setStrokeColor(0,1,1)

    ob[17] = display.newRect(50,-10,50,45)
    ob[17].x = 115
    ob[17].y = 185
    ob[17]:setFillColor(0)
    ob[17].strokeWidth = 3
    ob[17]:setStrokeColor(0,1,1)

    ob[18] = display.newRect(50,-10,50,45)
    ob[18].x = 205
    ob[18].y = 185
    ob[18]:setFillColor(0)
    ob[18].strokeWidth = 3
    ob[18]:setStrokeColor(0,1,1)

    ob[19] = display.newRect(50,-10,140,30)
    ob[19].x = 160
    ob[19].y = 300
    ob[19]:setFillColor(0)
    ob[19].strokeWidth = 3
    ob[19]:setStrokeColor(0,1,1)

    ob[20] = display.newRect(50,-10,60,70)
    ob[20].x = 157
    ob[20].y = 325
    ob[20]:setFillColor(0)
    ob[20].strokeWidth = 3
    ob[20]:setStrokeColor(0,1,1)

    for i = 1, #ob do
     fisica.addBody(ob[i],"static")
    end
end



pontuacao = 0

function Jogo:pontosTela()

pontos = display.newText("Pontos : "..pontuacao,60,-30)

end

function Jogo:mostrarPontos(pontuacao)

  
  pontos.text ="Pontos : "..pontuacao

end


  
function Jogo:perdeu()
    
      bd:inserir(pontuacao)
      print(pontuacao)
      composer.removeScene("view.pacman")
      composer.gotoScene("view.fimJogo")
end


function Jogo:ganhou()

   bd:inserir(pontuacao)
   print(pontuacao)
   composer.removeScene("view.pacman")
   composer.gotoScene("view.fimJogo")
end


buttons = {}

function Jogo:butoes()

    buttons[1] = display.newImage("buton.png")
    buttons[1].x = 120
    buttons[1].y = 450
    buttons[1].rotation = -180  
    buttons[1].name = "esquerda"


    buttons[2] = display.newImage("buton.png")
    buttons[2].x = 200
    buttons[2].y = 453
    buttons[2].name = "direita"

    buttons[3] = display.newImage("buton.png")
    buttons[3].x = 160
    buttons[3].y = 420
    buttons[3].rotation = -90 
    buttons[3].name = "cima"

    buttons[4] = display.newImage("buton.png")
    buttons[4].x = 160
    buttons[4].y = 485
    buttons[4].rotation = 90
    buttons[4].name = "baixo"

    buttons[1]:addEventListener("tap",Pacman)
    buttons[2]:addEventListener("tap",Pacman)
    buttons[3]:addEventListener("tap",Pacman)
    buttons[4]:addEventListener("tap",Pacman)
end
       
  function excluirTela()
  
      for i =1 , #ob do
          display.remove(ob[i])
      end

    
    for i =1 , #buttons do
          display.remove(Jogo)
      end

    for i =1 , #circulos do
          display.remove(circulos[i])
      end

       for i =1 , #linhas do
          display.remove(linhas[i])
      end

      pontuacao = 0
      vida =3

      display.remove(pontos)
      display.remove(vidas)


end

 Jogo:butoes()
 Pacman:player()
 Pacman:vidasTela()
 Bolas:bolinhas()
 Jogo:obstaculos()
 Jogo:bordas()
 Inimigo:inimigos()
 Jogo:pontosTela()

end


function scene:destroy(event)
    Pacman:remove()
    Inimigo:remove()
    excluirTela()
end

scene:addEventListener( "create", scene )
scene:addEventListener( "destroy", scene )


return scene
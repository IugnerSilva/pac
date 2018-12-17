local composer = require("composer")
local scene = composer.newScene()
local fisica = require("physics")
bd = require "banco"
physics.start()
physics.setGravity(0,0)
physics.setDrawMode("normal")

local w = display.contentWidth
local h = display.contentHeight
math.randomseed( os.time() )

Jogo = {}
Pacman = {}
Circulo = {}
Inimigo = {}



function scene:create()

linhas = {}
function Jogo:bordas()

    linhas[1] = display.newLine(0,-20,2*w,-15)
    linhas[1].strokeWidth = 3
        linhas[1]:setStrokeColor(0,1,1)

     linhas[2] = display.newLine(0,390,2*w,390)
     linhas[2].strokeWidth = 3
        linhas[2]:setStrokeColor(0,1,1)

      linhas[3] = display.newLine(5,390,5,-500)
      linhas[3].strokeWidth = 3
        linhas[3]:setStrokeColor(0,1,1)

       linhas[4] = display.newLine(313,390,313,-500)
       linhas[4].strokeWidth = 3
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


      circulos = {}

function Jogo:bolinhas(event)

      for i = 0, 133 do
        circulos[i]= display.newCircle(20,2,2)
       fisica.addBody(circulos[i],"static")
        circulos[i].isSensor = true
      end


      circulos[1].x = 20
      circulos[1].y = 23
      circulos[2].x = 20
      circulos[2].y = 46
      circulos[3].x = 20
      circulos[3].y = 69
      circulos[4].x = 20
      circulos[4].y = 92
      circulos[5].x = 20
      circulos[5].y = 115
      circulos[6].x = 20
      circulos[6].y = 138
      circulos[7].x = 20
      circulos[7].y = 161
      circulos[8].x = 20
      circulos[8].y = 184
      circulos[9].x = 20
      circulos[9].y = 207
      circulos[10].x = 20
      circulos[10].y = 230
      circulos[11].x = 20
      circulos[11].y = 253
      circulos[12].x = 20
      circulos[12].y = 276
      circulos[13].x = 20
      circulos[13].y = 299
      circulos[14].x = 20
      circulos[14].y = 322
      circulos[15].x = 20
      circulos[15].y = 345
      circulos[16].x = 20
      circulos[16].y = 373

      circulos[17].x = 43
      circulos[17].y = 0
      circulos[18].x = 66
      circulos[18].y = 0
      circulos[19].x = 89
      circulos[19].y = 0
      circulos[20].x = 112
      circulos[20].y = 0
      circulos[21].x = 135
      circulos[21].y = 0
      circulos[22].x = 158
      circulos[22].y = 0
      circulos[23].x = 181
      circulos[23].y = 0
      circulos[24].x = 204
      circulos[24].y = 0
      circulos[25].x = 227
      circulos[25].y = 0
      circulos[26].x = 250
      circulos[26].y = 0
      circulos[27].x = 273
      circulos[27].y = 0
      
      circulos[28].x = 300
      circulos[28].y = 23
      circulos[29].x = 300
      circulos[29].y = 46
      circulos[30].x = 300
      circulos[30].y = 69
      circulos[31].x = 300
      circulos[31].y = 92
      circulos[32].x = 300
      circulos[32].y = 115
      circulos[33].x = 300
      circulos[33].y = 138
      circulos[34].x = 300
      circulos[34].y = 161
      circulos[35].x = 300
      circulos[35].y = 184
      circulos[36].x = 300
      circulos[36].y = 207
      circulos[37].x = 300
      circulos[37].y = 230
      circulos[38].x = 300
      circulos[38].y = 253
      circulos[39].x = 300
      circulos[39].y = 276
      circulos[40].x = 300
      circulos[40].y = 299
      circulos[41].x = 300
      circulos[41].y = 322
      circulos[42].x = 300
      circulos[42].y = 348
      circulos[43].x = 300
      circulos[43].y = 375
      circulos[44].x = 300
      circulos[44].y = 0

      circulos[45].x = 46
      circulos[45].y = 375
      circulos[46].x = 69
      circulos[46].y = 375
      circulos[47].x = 92
      circulos[47].y = 375
      circulos[48].x = 115
      circulos[48].y = 375
      circulos[49].x = 138
      circulos[49].y = 375
      circulos[50].x = 161
      circulos[50].y = 375
      circulos[51].x = 184
      circulos[51].y = 375
      circulos[52].x = 207
      circulos[52].y = 375
      circulos[53].x = 230
      circulos[53].y = 375
      circulos[54].x = 253
      circulos[54].y = 375
      circulos[55].x = 276
      circulos[55].y = 375 

      circulos[56].x = 40
      circulos[56].y = 272
      circulos[57].x = 60
      circulos[57].y = 272
      circulos[58].x = 77
      circulos[58].y = 275
      circulos[59].x = 100
      circulos[59].y = 272
      circulos[60].x = 120
      circulos[60].y = 272
      circulos[61].x = 140
      circulos[61].y = 272
      circulos[62].x = 160
      circulos[62].y = 272
      circulos[63].x = 180
      circulos[63].y = 272
      circulos[64].x = 200
      circulos[64].y = 272
      circulos[65].x = 220
      circulos[65].y = 272
      circulos[66].x = 240
      circulos[66].y = 272
      circulos[67].x = 260
      circulos[67].y = 272
      circulos[68].x = 280
      circulos[68].y = 272

      circulos[69].x = 75
      circulos[69].y = 50
      circulos[70].x = 75
      circulos[70].y = 73
      circulos[71].x = 75
      circulos[71].y = 96
      circulos[72].x = 75
      circulos[72].y = 119
      circulos[73].x = 75
      circulos[73].y = 142
      circulos[74].x = 75
      circulos[74].y = 165
      circulos[75].x = 75
      circulos[75].y = 188
      circulos[76].x = 75
      circulos[76].y = 211
      circulos[77].x = 75
      circulos[77].y = 234
      circulos[78].x = 75
      circulos[78].y = 257  
     
      circulos[79].x = 75
      circulos[79].y = 303  
      circulos[80].x = 75
      circulos[80].y = 326   
      

      circulos[81].x = 240
      circulos[81].y = 50   
      circulos[82].x = 240
      circulos[82].y = 73   
      circulos[83].x = 240
      circulos[83].y = 94   
      circulos[84].x = 240
      circulos[84].y = 114   
      circulos[85].x = 240
      circulos[85].y = 132 
      circulos[86].x = 240
      circulos[86].y = 150 
      circulos[87].x = 240
      circulos[87].y = 170 
      circulos[88].x = 240
      circulos[88].y = 190 
      circulos[89].x = 240
      circulos[89].y = 210 
      circulos[90].x = 240
      circulos[90].y = 230 
      circulos[91].x = 240
      circulos[91].y = 250 
      circulos[92].x = 240
      circulos[92].y = 290 
      circulos[93].x = 240
      circulos[93].y = 310 
      circulos[94].x = 240
      circulos[94].y = 330 

      circulos[95].x = 95
      circulos[95].y = 48 
      circulos[96].x = 115
      circulos[96].y = 48 
      circulos[97].x = 135
      circulos[97].y = 48 
      circulos[98].x = 155
      circulos[98].y = 48 
      circulos[99].x = 178
      circulos[99].y = 48 
      circulos[100].x = 200
      circulos[100].y = 48
      circulos[101].x = 220
      circulos[101].y = 48 

      circulos[102].x = 95
      circulos[102].y = 148 
      circulos[103].x = 115
      circulos[103].y = 148 
      circulos[104].x = 135
      circulos[104].y = 148 
      circulos[105].x = 155
      circulos[105].y = 148 
      circulos[106].x = 175
      circulos[106].y = 148 
      circulos[107].x = 195
      circulos[107].y = 148
      circulos[108].x = 215
      circulos[108].y = 148 

      circulos[109].x = 95
      circulos[109].y = 223 
      circulos[110].x = 115
      circulos[110].y = 223 
      circulos[111].x = 135
      circulos[111].y = 223 
      circulos[112].x = 155
      circulos[112].y = 223 
      circulos[113].x = 175
      circulos[113].y = 223 
      circulos[114].x = 195
      circulos[114].y = 223
      circulos[115].x = 215
      circulos[115].y = 223 

      circulos[116].x = 158
      circulos[116].y = 175
      circulos[117].x = 158
      circulos[117].y = 195

      circulos[118].x = 37
      circulos[118].y = 93
      circulos[119].x = 57
      circulos[119].y = 93
      circulos[120].x = 40
      circulos[120].y = 186
      circulos[121].x = 55
      circulos[121].y = 186

      circulos[122].x = 258
      circulos[122].y = 93
      circulos[123].x = 278
      circulos[123].y = 93

      circulos[124].x = 258
      circulos[124].y = 186
      circulos[125].x = 278
      circulos[125].y = 186

      circulos[126].x = 115
      circulos[126].y = 25
      circulos[127].x = 200
      circulos[127].y = 25

      circulos[128].x = 110
      circulos[128].y = 330
      circulos[129].x = 110
      circulos[129].y = 355
      circulos[130].x = 95
      circulos[130].y = 330

      circulos[131].x = 200
      circulos[131].y = 330
      circulos[132].x = 200
      circulos[132].y = 355
      circulos[133].x = 218
      circulos[133].y = 330

      for i=0,133 do
        circulos[i].name = "bolas"
       
      end
    end

pontuacao = 0

function Jogo:pontosTela()

pontos = display.newText("Pontos : "..pontuacao,60,-30)

end

function Jogo:mostrarPontos(pontuacao)
  
  pontos.text ="Pontos : "..pontuacao

end


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
         composer.removeScene("pacman")
        ganhou()          

        end

     
  end
  
function perdeu()
      bd:inserir(pontuacao)
 print(pontuacao)
  composer.gotoScene("fimJogo")
end

function ganhou()
 bd:inserir(pontuacao)
 print(pontuacao)
  composer.gotoScene("fimJogo")
  
  

      
end


function Pacman:player(event)
      
      jogador = display.newImageRect("direita.png",17,17)
      fisica.addBody(jogador,"dynamic")
      jogador.name = "jogador"
      jogador:addEventListener("collision", comer)
      jogador.x = 150
      jogador.y = 115
end

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

buttons = {}

function Jogo:butoes(event)

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

    buttons[1]:addEventListener("tap",moverjogador)
    buttons[2]:addEventListener("tap",moverjogador)
    buttons[3]:addEventListener("tap",moverjogador)
    buttons[4]:addEventListener("tap",moverjogador)
end
       
  function Jogo:excluirTela()
  
      for i =1 , #ob do
          display.remove(ob[i])
      end

    
    for i =1 , #buttons do
          display.remove(buttons[i])
      end

    for i =1 , #circulos do
          display.remove(circulos[i])
      end

       for i =1 , #linhas do
          display.remove(linhas[i])
      end

      for i =1 , #inimigo do
          display.remove(inimigo[i])
      end

      for i =1 , #inimigo2 do
          display.remove(inimigo2[i])
      end


      if(comecarMover ~= nil)then
      timer.pause(comecarMover)
    end
      display.remove(jogador)
      display.remove(pontos)
      pontuacao = 0

end

end

function scene:show(event)
  
    --Runtime:addEventListener("enterFrame",moverjogador)
    Jogo.butoes()
    bolinhas()
    player()  
    obstaculos()
    pontosTela()
    bordas()
    inimigos()
    



end


function scene:hide(event)
 
    excluirTela()
end





scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )



return scene
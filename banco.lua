
local bancoDeDados = {}

local  sqlite3 = require("sqlite3")
local  caminho = system.pathForFile("dados.db",system.DocumentsDirectory)
local  banco = sqlite3.open(caminho)
local maior = 0

local tabela = [[CREATE TABLE IF NOT EXISTS Pontos(pontuacao NOT NULL);]]
banco:exec(tabela)

--local remover = [[DELETE FROM Pontos]]
--banco:exec(remover)

function pegarMaior()

	for linha in banco:nrows("SELECT MAX(pontuacao) AS maior FROM Pontos") do
				maior =linha.maior
	end

	
	return maior
end

function bancoDeDados:inserir( pontuacao )
	local maior = pegarMaior()

	if maior ~= nil and maior<pontuacao then
		local apagar = [[ DELETE FROM Pontos;]]
		banco:exec(apagar)

		local inserir = [[INSERT INTO Pontos (pontuacao) VALUES (]] ..pontuacao.. [[);]]
		banco:exec(inserir)

		local atualizar = [[UPDATE Pontos ;]]
		banco:exec(atualizar)

	elseif maior == nil then

	local inserir = [[INSERT INTO Pontos (pontuacao) VALUES (]] ..pontuacao.. [[);]]
		banco:exec(inserir)
	end 
		
end


mostrarPontuacao = {}


function bancoDeDados:pegarPontuacao()


   for linha in banco:nrows("SELECT pontuacao FROM Pontos ") do
	

     mostrarPontuacao[#mostrarPontuacao+1] = 
   { pontuacao = linha.pontuacao }


 end

return mostrarPontuacao

end


return bancoDeDados

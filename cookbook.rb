require_relative 'receita' # nome do arquivo

def opcoes()
    
    puts "[1] Cadastrar uma receita"
    puts "[2] Ver todas as receitas"
    puts "[3] Sair"
    print "Escolha uma opção: "
    


    opcao_escolhida = gets().to_i()
    puts "\n\n"
    return opcao_escolhida
end
puts "Bem‑vindo ao My Cookbook, sua rede social de receitas culinárias!"
opcao = opcoes()
receitas =[]
# tomar uma decisão
while (opcao != 3) do
    if (opcao == 1)
        print "Digite o nome da sua receita: "
        nome = gets().chomp()
        print "Digite o modo de preparo: "
        preparo = gets().chomp() 
    print "Digite o tipo da receita: "
    tipo = gets().chomp() 
        puts "Receita de #{nome} cadastrada com sucesso!"
        receitas << Receita.new(nome,preparo, tipo )
    end
    if(opcao == 2)
    puts "receitas Cadastradas"
    puts receitas
    end    
puts "\n\n"
opcao = opcoes()

end

puts "Adeus"








#Escolha uma opção: 2
#1 ‑ Feijoada Vegana
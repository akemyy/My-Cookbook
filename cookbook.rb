require_relative 'receita' # nome do arquivo
$id = 0
$receitas =[]
def opcoes()
    
    puts "[1] Cadastrar uma receita"
    puts "[2] Ver todas as receitas"
    puts "[3] Buscar receitas"
    puts "[4] Remover receita"
    puts "[5] Sair"
    print "Escolha uma opção: "
    
    opcao_escolhida = gets().to_i()
    puts "\n\n"
    return opcao_escolhida
end

def busca_id(indice)
    encontrado = nil
    $receitas.each do |receita|

        if(receita.id == indice)     
            encontrado =  receita
         end
    end     
    return encontrado
end
puts "Bem‑vindo ao My Cookbook, sua rede social de receitas culinárias!"
opcao = opcoes()

# tomar uma decisão
while (opcao != 5) do
    if (opcao == 1)
        $id = $id + 1
        print "Digite o nome da sua receita: "
        nome = gets().chomp()
        print "Digite o modo de preparo: "
        preparo = gets().chomp() 
        print "Digite o tipo da receita: "
        tipo = gets().chomp() 
        puts "Receita de #{nome} cadastrada com sucesso!"
        $receitas << Receita.new($id, nome,preparo, tipo )
    end
    if(opcao == 2)
    puts "receitas Cadastradas"
    puts $receitas
    end 
    if(opcao == 3)
        puts "busca"
        indice = gets().chomp().to_i() 
        
        puts busca_id(indice)
    end 
    if(opcao == 4)
        puts "receitas Cadastradas"
        puts $receitas
        puts "Escolha o número da receita que seja apagar: "
        del = gets().chomp().to_i()  
        puts busca_id(del)
        $receitas.delete(busca_id(del))    
        end     
puts "\n\n"
opcao = opcoes()

end

puts "Volte sempre!! \nComa seus vegetais"


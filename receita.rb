class Receita
    attr_reader :nome , :preparo, :tipo
    attr_writer :nome , :preparo, :tipo
        def initialize( nome, preparo, tipo)
            @nome = nome
            @preparo = preparo
            @tipo = tipo
        end  
        def to_s()
    return " #{@nome} ‑ #{@tipo}\n #{@preparo} "
        end    
    end
class Receita
    attr_reader :nome , :preparo, :tipo
    attr_writer :nome , :preparo, :tipo
    $id =0
        def initialize( id, nome, preparo, tipo)
            @id = id
            @nome = nome
            @preparo = preparo
            @tipo = tipo
        end  
        def to_s()
        #receita.each_with_index do |item, index|    
        return "##{@id} - #{@nome} ‑ #{@tipo}\n #{@preparo} "
        end    
        def id()
            #receita.each_with_index do |item, index|    
            return @id
            end   
    end
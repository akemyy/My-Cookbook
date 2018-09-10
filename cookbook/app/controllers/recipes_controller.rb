class RecipesController < ApplicationController
    def show
        @recipe = Recipe.find(params[:id])
    end

    def new
        @recipe = Recipe.new
    end   
    
    def create
        # Receber uma receita
        recipe_params = params.require(:recipe).permit(:title,:recipe_type,:cuisine,:difficulty,
                                                      :cook_time,:ingredients,:cook_method)
        @recipe = Recipe.new(recipe_params)

        if @recipe.save
            redirect_to recipe_path(@recipe.id) 
        else
            # Redirecionar para a receia recem criada
            render 'new'
        end    
    end   
    
    def edit
        @receita = Recipe.find(params[:id])
    end 
    
    def update
        # Carreguei a receita pelo ID
        @receita = Recipe.find(params[:id])
        # Recebe a nova informação e atualiza
        recipe_params = params.require(:recipe).permit(:title,:recipe_type,:cuisine,:difficulty,
        :cook_time,:ingredients,:cook_method)

        if @receita.update(recipe_params)
            redirect_to recipe_path(@receita)
        else
            # Redirecionar para a receia recem criada
            render 'edit'
        end    
        
        #leva o usuario para o show receita
        
    end    

end    
class RecipesController < ApplicationController
    def show
        @recipe = Recipe.find(params[:id])
    end

    def new
    end   
    
    def create
        # Receber uma receita
        recipe_params = params.require(:recipe).permit(:title,:recipe_type,:cuisine,:difficulty,
                                                      :cook_time,:ingredients,:cook_method)
        recipe = Recipe.create(recipe_params)
         # Redirecionar para a receia recem criada
         redirect_to recipe_path(recipe.id) 
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

        @receita.update(recipe_params)
        #leva o usuario para o show receita
        redirect_to recipe_path(@receita)
    end    

end    
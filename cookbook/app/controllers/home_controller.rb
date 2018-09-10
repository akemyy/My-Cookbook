class HomeController < ApplicationController
    def welcome
        @featured_recipes = Recipe.where(featured: true)
        @other_recipes = Recipe.where(featured: false)
    end
end    
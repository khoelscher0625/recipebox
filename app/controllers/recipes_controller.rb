class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    Recipe.create(place_params)
    redirect_to root_path
  end

  private

  def place_params
    params.require(:recipe).permit(:name, :course, :servings, :memory)
  end

end

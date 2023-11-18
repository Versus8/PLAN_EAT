class RecipesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @user = current_user
    @recipes = Recipe.all
    if params[:query].present?
    @recipes = Recipe.search_by_name_and_description(params[:query])
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
    if @recipe.save
      redirect_to recipes_path(@recipe)
    else
      render :new, status: :unprocessable_entity
    end
  end


  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      redirect_to @recipe, notice: "Updated !"
    else
      render :edit
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    redirect_to recipes_path, status: :see_other
  end

  private

  def recipe_params
    params.require(:book).permit(:name, :description, :preparation, :category, :photo)
  end
end

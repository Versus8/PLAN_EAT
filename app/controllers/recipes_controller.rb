class RecipesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index]

  def index
    @date = params[:date]
    @user = current_user
    @recipes = Recipe.all
    @categories = Category.all
    if params[:query].present?
      @recipes = Recipe.search_by_name_and_description(params[:query])
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
    @ingredient = @recipe.ingredients.new
  end

  def recipes_index
    @user = current_user
    @category = Category.find_by(name: params[:category])
    # @recipes = RecipeCategory.where(category: @category)
    @recipes = Recipe.joins(:categories).where(categories: {name: @category.name})
  end

  def recipe_ingredients_index
    @recipe = Recipe.find(params[:id])
    @ingredients = @recipe.ingredients.all
  end

  def ingredients_list
    @ingredients = Ingredient.all
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user

    if @recipe.save
      recipe_category_creation

      redirect_to recipe_path(@recipe)
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
    params.require(:recipe).permit(:name, :description, :preparation, :photo, { category_ids: [] }, { ingredients_attributes: ingredient_attributes })
  end

  def recipe_category_creation
    recipe_params[:category_ids].each do |category_id|
      @recipe_category = RecipeCategory.new(recipe_id: @recipe.id, category_id: category_id)
    end
  end

  def ingredients_params
    params.require(:ingredients).permit(ingredient_attributes)
  end

  def ingredient_attributes
    [:id, :name, :unit, :quantity]
  end
end

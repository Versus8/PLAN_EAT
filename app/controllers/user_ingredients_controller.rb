class UserIngredientsController < ApplicationController
  def index
    @user_ingredients = UserIngredient.where(user: current_user)
    @user = current_user
  end

  def new
    @user_ingredient = UserIngredient.new
    @recipe = Recipe.find(params[:recipe_id])
    @ingredients = @recipe.ingredients
  end

  def create
    @user_ingredient = UserIngredient.new
    @recipe = Recipe.find(params[:recipe_id])
    @ingredients = @recipe.ingredients

    if params[:user_ingredient] && params[:user_ingredient][:ingredient_ids].is_a?(Array)
      params[:user_ingredient][:ingredient_ids]&.each do |ingredient_id|
        UserIngredient.create(ingredient_id: ingredient_id, user: current_user)
      end
      redirect_to user_ingredients_path, notice: "Ingredients added successfully"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def delete_and_update
    raise
    @user_ingredient = UserIngredient.find(params[:id])
    @user_ingredient.destroy

    redirect_to user_ingredient_path, status: :see_other
  end

end

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

  def delete
    user_ingredient_ids = Array(params[:user_ingredient][:ingredient_ids])

    user_ingredient_ids.each do |ingredient_id|
      category_bio = params["category_bio#{ingredient_id}"] == "bio" # Assuming checkbox value for bio is 'bio'
      category_vrac = params["category_vrac#{ingredient_id}"] == "vrac" # Assuming checkbox value for vrac is 'vrac'
      category_local = params["category_local#{ingredient_id}"] == "local" # Assuming checkbox value for local is 'local'

      user_ingredient = UserIngredient.find(ingredient_id)
      user_ingredient.destroy
      score = calculate_points(category_bio, category_vrac, category_local)
      current_user.update(points: current_user.points + score)
    end

    redirect_to user_path(current_user), notice: 'Go see your profil to discover your shopping score!'
  end

  private

  def calculate_points(category_bio, category_vrac, category_local)
    points = 0
    points += 50 if category_bio
    points += 50 if category_vrac
    points += 50 if category_local
    points
  end
end

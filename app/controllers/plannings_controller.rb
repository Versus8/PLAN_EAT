class PlanningsController < ApplicationController
  before_action :set_recipe, only: %i[new create]

  def index
    @plannings = Planning.where(user: current_user)
    @owner_plannings = current_user.owner_plannings
  end

  def new
    @planning = Planning.new
  end

  def create
    @planning = Planning.new()
    @planning.user = current_user
    @planning.recipe = @recipe

    if @planning.save
      redirect_to recipe_planning_path(@recipe)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @planning = Planning.find(params[:id])
  end

  def update
    @planning = Planning.find(params[:id])

    if @planning.update(planning_params)
      redirect_to recipe_planning_path(@recipe), notice: "Updated !"
    else
      render :edit
    end
  end

  def destroy
    @planning.find(params(:id))
    @planning.destroy

    redirect_to recipe_planning_path(@recipe), status: :see_other
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end

  def planning_params
    params.require(:planning).permit(:date);
  end
end

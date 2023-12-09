class PlanningsController < ApplicationController
  before_action :set_recipe, only: %i[new create]
  skip_before_action :verify_authenticity_token

  def index
    @plannings = Planning.where(user: current_user)
    @owner_plannings = current_user.owner_plannings
    if session[:show_flash_notice]
      flash.now[:notice] = 'Planning added successfull !!!'
      session.delete(:show_flash_notice)
    end
  end

  def new
    @planning = Planning.new
  end

  def create
    @planning = Planning.new(planning_params)
    @planning.user = current_user
    @planning.recipe = @recipe

    if @planning.save
      flash[:notice] = 'Planning added successfull !!!'
      session[:show_flash_notice] = true
      redirect_to plannings_path, notice: 'Planning added successfull !!!'
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
      redirect_to planning_path(@planning), notice: "Updated !"
    else
      render :edit
    end
  end

  def destroy
    @planning = Planning.find(params[:id])
    @planning.destroy

    redirect_to planning_path(@planning), status: :see_other
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end

  def planning_params
    params.require(:planning).permit(:date)
  end
end

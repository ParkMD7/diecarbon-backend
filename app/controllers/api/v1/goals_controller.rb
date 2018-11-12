class Api::V1::GoalsController < ApplicationController
  # make sure to skip the before_action :authorized coming from ApplicationController
  skip_before_action :authorized, only: [:index, :show, :create, :update, :destroy]

  def index
    @goals = Goal.all
    render json: @goals, status: :ok
  end

  def show
    @goal = Goal.find(params[:id])
    render json: @goal, status: :ok
  end

  def update
    @goal = Goal.find(params[:id])
    # byebug
    user = User.find(update_goal_params[:user])
    @goal.users << user
    @goal.save
    render json: @goal, status: :ok
  end

  def destroy
    @goal = Goal.find(params[:id])
    byebug
    user = User.find(update_goal_params[:user])
    @goal.users.delete(user)
    @goal.save
    render json: @goal, status: :ok
  end

##################################################################################
##################################################################################
##################################################################################

  private

  def goal_params
    params.require(:goal).permit(:title, :description, :category, :difficulty, :footprint)
  end

  def update_goal_params
    params.permit(:user)
  end


end

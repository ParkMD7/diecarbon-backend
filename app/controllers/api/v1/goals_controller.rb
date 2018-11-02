class Api::V1::GoalsController < ApplicationController
  # make sure to skip the before_action :authorized coming from ApplicationController
  skip_before_action :authorized, only: [:index, :show]

  def index
    @goals = Goal.all
    render json: @goals, status: :ok
  end

  def show
    @goal = Goal.find(params[:id])
    render json: @goal, status: :ok
  end

end

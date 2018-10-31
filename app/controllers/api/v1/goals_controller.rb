class Api::V1::GoalsController < ApplicationController

  def index
    @goals = Goal.all
    render json: @goals, status: :ok
  end
  
end

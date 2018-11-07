class Api::V1::UsersController < ApplicationController
  # make sure to skip the before_action :authorized coming from ApplicationController
  # skip_before_action :authorized, only: [:create]
  skip_before_action :authorized, only: [:index, :create, :show, :update]


  def index
    @users = User.all
    render json: @users, status: :ok
  end

  def show
    @user = User.find(params[:id])
    render json: @user, status: :ok
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    render json: @user, status: :ok
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token({ user_id: @user.id })
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'Failed to Create User' }, status: :not_acceptable
    end
  end

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  def login
    @user = User.find_by(username: user_params[:username])
    if @user
      if @user.password == user_params[:password]
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
      else
        render json: { status: 'error', code: '3100', message: 'Username or password invalid'}
      end
    else
      render json: { status: 'error', code: '3100', message: 'Username or password invalid'}
    end
  end

##################################################################################
##################################################################################
##################################################################################
  private

  def user_params
    params.require(:user).permit(:name, :username, :password, :picture, :email, :location, :footprint)
  end

end

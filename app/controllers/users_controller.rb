class UsersController < ApplicationController
    def create
      @user = User.create(user_params)
      if @user.valid?
        render json: { user: UserSerializer.new(@user) }, status: :created
      else
        render json: { error: 'failed to create user' }, status: :not_acceptable
      end
    end

    def show
      user = User.find(params[:id])
      render json: user, except: [:created_at, :updated_at]
    end

    def index
      users = User.all
      render json: users, except: [:created_at, :updated_at]
    end
   
    private
    def user_params
      params.require(:user).permit(:username, :password, :bio, :image)
    end
  end
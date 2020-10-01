class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]


    def create
      @user = User.create(user_params)
      # byebug
      if @user.valid?
        @token = encode_token(user_id: @user.id)
        render json: UserSerializer.new(@user).to_serialized_json, jwt: @token, status: :created
      else
        render json: { error: 'failed to create user' }, status: :not_acceptable
      end
    end

    def show
      user = User.find(params[:id])
      render json: UserSerializer.new(user).to_serialized_json
    end

    def index
      users = User.all
      render json: UserSerializer.new(users).to_serialized_json
    end
   
    private
    def user_params
      params.require(:user).permit(:username, :password, :bio, :image)
    end
  end
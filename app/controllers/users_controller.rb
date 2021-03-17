class UsersController < ApplicationController
    before_action :authenticate, only: [:show, :update]
    def signup
        user_params = params.permit(:name, :profile_pic, :email, :password)

        user = User.create(user_params)
        if user.valid?
            token = JWT.encode({ user_id: user.id }, 'HNvGQSl2WrCFHZiWNxgWl970AnihSPIjBTFa7f4QTEsp7HzvWblBPKSzuGt9Vik', 'HS256')
            render json: { user: UserSerializer.new(user), token: token }, status: :created
        else
            render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
        end

    end

    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            token = JWT.encode({ user_id: user.id }, 'HNvGQSl2WrCFHZiWNxgWl970AnihSPIjBTFa7f4QTEsp7HzvWblBPKSzuGt9Vik', 'HS256')
            render json: { user: UserSerializer.new(user), token: token }
        else
            render json: {errors: ["Invalide username or password"]}, status: :unauthorized
        end
    end

    def show
        render json: @current_user
      end
end

class UsersController < ApplicationController
  def register
  end

  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.valid_password?(params[:password])
      render "users/login", locals: {user: @user}
    else
      render json: {status: 'error'}
    end
  end
end

class UsersController < ApplicationController
  def index

  end

  def new

  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: 'User was created.'
    else
      render :new
    end
  end
end

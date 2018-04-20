class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show
  end

  def edit
    @user = User.new(params[:user].permit(:name))
      if verify_recaptcha(model: @user) && @user.save
      redirect_to @user
      else
      render 'new'
      end
  end

  def update
  end
end

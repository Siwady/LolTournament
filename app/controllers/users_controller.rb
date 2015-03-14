class UsersController < ApplicationController
  skip_before_action :authenticate

  def new
    if current_user.present?
      redirect_to homes_path
    else
      @user = User.new
      
    end
  end

  def create
    @user = User.new(users_params)

    if @user.save
      UserMailer.welcome_email(@user).deliver
      login(@user)
    else
      render :new
    end

  end

  private

    def users_params
      params.require(:user).permit!
    end
end
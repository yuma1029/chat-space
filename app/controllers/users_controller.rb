class UsersController < ApplicationController

  def edit
  end

  def update
    if current_users.update(user_params)
      redirect_to root_path
    else
      rendar :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end

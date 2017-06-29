class UsersController < ApplicationController
  load_and_authorize_resource
  
  def show
  end
  
  def edit
  end
  
  def update
    if @user.update_attributes(user_params)
      redirect_to root_path, 
        notice: 'User was successfully approved.'
    else
      render :edit
    end
  end

  
  private
  
  def user_params
    params.require(:user).permit(:approved)
  end
  
end

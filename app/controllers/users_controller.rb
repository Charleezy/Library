class UsersController < ApplicationController
  def new
  end
    
  def login
      @users = User.all
  end
    
  def user_params
  	params.require(:name).permit(:admin)
  end
end

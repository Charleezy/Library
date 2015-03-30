class UsersController < ApplicationController
  def new
  end
    
  def login
      @users = User.all
  end
end

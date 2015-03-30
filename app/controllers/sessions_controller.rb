class SessionsController < ApplicationController
  def create
    user = User.find_by(name: params[:name])
    if user
      log_in user
      redirect_to "/books/index"
    end
  end

  def destroy
    log_out
    redirect_to "/"
  end
end
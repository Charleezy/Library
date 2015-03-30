class SessionsController < ApplicationController
  def create
    user = User.find_by(name: params[:session][:name])
    if user
      log_in user
    end
  end

  def destroy
    log_out
  end
end
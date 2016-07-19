class UserController < ApplicationController
  def new
  end

  def create
    user = User.new(

    )
    if user.save
      session[:user_id] = user.id
      flash[:success] = "Successfully made account!"
      redirect_to '/'
    else
      flash[:waring] = "Done messed up"
      redirect_to '/signup'
    end
  end
end

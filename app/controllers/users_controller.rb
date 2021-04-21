class UsersController < ApplicationController
  def show
    #binding.pry
    @user = User.find(params[:id])
    #@name = current_user.name
    #binding.pry
    @prototypes = @user.prototypes  #current_user.prototypes
  end
end

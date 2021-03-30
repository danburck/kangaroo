class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @cocktail = Cocktail.new
  end
end

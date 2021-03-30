class UsersController < ApplicationController
  def index
    @users = User.all
    if params[:query].present?
      @users = User.near(params[:query], 20)
    end
  end

  def show
    @user = User.find(params[:id])
    @cocktail = Cocktail.new
  end
end

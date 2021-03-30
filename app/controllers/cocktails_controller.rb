class CocktailsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.user = @user
    if @cocktail.save
      redirect_to user_path(@user)
    else
      render :show
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end

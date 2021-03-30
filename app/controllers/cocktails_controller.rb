class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:edit, :update]

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

  def edit
  end

  def update
    @cocktail.update(cocktail_params)
    if @cocktail.save
      redirect_to user_path(@cocktail.user)
    else
      render :edit
    end
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end

class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:edit, :update, :destroy]

  def create
    @bartender = Bartender.find(params[:bartender_id])
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.bartender = @bartender
    if @cocktail.save
      redirect_to @bartender
    else
      render bartender_path(@bartender)
    end
  end

  def edit
  end

  def update
    @cocktail.update(cocktail_params)
    if @cocktail.save
      redirect_to bartender_path(@cocktail.bartender)
    else
      render :edit
    end
  end

  def destroy
    @cocktail.destroy
    redirect_to bartender_path(@cocktail.bartender)
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end

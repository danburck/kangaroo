class BartendersController < ApplicationController
  def new
    @bartender = Bartender.new
  end

  def create
    @bartender = Bartender.new(bartender_params)
    @bartender.user = current_user
    if @bartender.save
      redirect_to bartender_path(@bartender)
    else
      render :new
    end
  end

  def index
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def bartender_params
    params.require(:bartender).permit(:name, :address, :photo)
  end

end

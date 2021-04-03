class BartendersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
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
    if params[:query].present?
      @bartenders = Bartender.near(params[:query], 20).where.not(cocktails: nil)
    else
      @bartenders = Bartender.where.not(cocktails: nil)
    end

    @markers = @bartenders.geocoded.map do |bartender|
      {
        lat: bartender.latitude,
        lng: bartender.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { bartender: bartender })
      }
    end
  end

  def show
    @bartender = Bartender.find(params[:id])
    @cocktail = Cocktail.new
    @booking = Booking.new
  end

  def update
    @bartender = Bartender.find(params[:id])
    @bartender.update(bartender_params)
    redirect_to @bartender
  end

  def destroy
  end

  private

  def bartender_params
    params.require(:bartender).permit(:name, :address, :photo)
  end
end

class UsersController < ApplicationController
  def index
    if params[:query].present?
      @users = User.near(params[:query], 20)
    else
      @users = User.all
    end

    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { user: user })
      }
    end
  end

  def show
    @user = User.find(params[:id])
    @cocktail = Cocktail.new
  end
end

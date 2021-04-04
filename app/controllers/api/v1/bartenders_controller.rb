class Api::V1::BartendersController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [:index, :show]
  before_action :set_bartender, only: [:show, :update, :destroy]

  def index
    @bartenders = policy_scope(Bartender)
  end

  def show
  end

  def update
    if @bartender.update(bartender_params)
      render :show
    else
      render_error
    end
  end

  def create
    @bartender = Bartender.new(bartender_params)
    @bartender.user = current_user
    authorize @bartender
    if @bartender.save
      render :show, status: :created
    else
      render_error
    end
  end

  def destroy
    @bartender.destroy
    head :no_content
  end

  private

  def set_bartender
    @bartender = Bartender.find(params[:id])
    authorize @bartender
  end

  def bartender_params
    params.require(:bartender).permit(:name, :address)
  end

  def render_error
    render json: { errors: @bartender.errors.full_messages },
      status: :unprocessable_entity
  end
end

class Api::V1::BartendersController < Api::V1::BaseController
  before_action :set_bartender, only: [:show]

  def index
    @bartenders = policy_scope(Bartender)
  end

  def show
  end

  private

  def set_bartender
    @bartender = Bartender.find(params[:id])
    authorize @bartender
  end
end

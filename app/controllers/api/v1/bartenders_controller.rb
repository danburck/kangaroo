class Api::V1::BartendersController < Api::V1::BaseController
  def index
    @bartenders = policy_scope(Bartender)
  end
end

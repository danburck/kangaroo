require 'rails_helper'

RSpec.describe 'Bartenders', type: :request do
  describe "GET /create" do
    it "returns http success" do
      get bartenders_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get bartenders_path
      expect(response).to have_http_status(:success)
    end
  end
end

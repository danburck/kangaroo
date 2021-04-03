require 'rails_helper'

RSpec.describe 'Bartenders', type: :request do
  let(:user) { User.create(email: 'dan@kangaroo.com', password: '123456') }

  let(:valid_attributes) do
    {
      'id': '1',
      'user': user,
      'name': "Dan's",
      'address': 'Bouchéstr 2, 12059 Berlin'
    }
  end

  let(:invalid_attributes) do
    {
      'id': 'a',
      'name': '',
      'address': ''
    }
  end

  describe "GET /index" do
    context 'with valid attributes' do
      it "returns http success" do
        bartender = Bartender.create(valid_attributes)

        get bartenders_path
        expect(response).to be_successful
      end
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get bartenders_path
      expect(response).to be_successful
    end
  end
end

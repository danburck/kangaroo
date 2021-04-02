require 'rails_helper'

RSpec.describe Bartender, type: :model do
  let(:user) { User.create(email: 'dan@kangaroo.com', password: '123456') }
  let(:bartender) { Bartender.create(user: user, name: "Dan's", address: 'Bouchéstr 2, 12059 Berlin')}

  describe '#name' do
    subject { bartender.name }

    it "returns the bartender's name" do
      expect(subject).to eq("Dan's")
    end
  end
end

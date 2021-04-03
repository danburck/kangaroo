require 'rails_helper'

RSpec.describe Bartender, type: :model do
  let(:user) { User.create(email: 'dan@kangaroo.com', password: '123456') }

  describe '#initialize' do
    it 'has a user' do
      bartender = Bartender.new(
        user: nil,
        name: "Dan's",
        address: 'Bouchéstr 2, 12059 Berlin'
      )
      expect(bartender).to_not be_valid

      bartender.user = user
      expect(bartender).to be_valid
    end

    it 'has a name' do
      bartender = Bartender.new(
        user: user,
        name: "",
        address: 'Bouchéstr 2, 12059 Berlin'
      )
      expect(bartender).to_not be_valid

      bartender.name = "Dan's"
      expect(bartender).to be_valid
    end

    it 'has a address' do
      bartender = Bartender.new(
        user: user,
        name: "Dan's",
        address: ''
      )
      expect(bartender).to_not be_valid

      bartender.address = 'Bouchéstr 2, 12059 Berlin'
      expect(bartender).to be_valid
    end
  end
end

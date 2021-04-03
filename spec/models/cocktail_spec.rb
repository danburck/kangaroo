require 'rails_helper'

RSpec.describe Cocktail, type: :model do
  let(:user) { User.create(email: 'dan@kangaroo.com', password: '123456') }
  let(:bartender) { Bartender.create(user: user, name: "Dan's", address: 'Bouchéstr 2, 12059 Berlin')}

  describe '#initialize' do
    it 'has a name' do
      cocktail = Cocktail.new(
        name: '',
        bartender: bartender
      )
      expect(cocktail).to_not be_valid
      cocktail.name = 'Negroni'
      expect(cocktail).to be_valid
    end

    it 'has a bartender' do
      cocktail = Cocktail.new(
        name: 'Negroni',
        bartender: nil
      )
      expect(cocktail).to_not be_valid
      cocktail.bartender = bartender
      expect(cocktail).to be_valid
    end
  end
end

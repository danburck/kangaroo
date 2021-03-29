require 'rails_helper'

RSpec.describe Cocktail, type: :model do
  let(:user) { User.create(email: 'dan@kangaroo.com', password: '123456')}
  let(:cocktail) { Cocktail.create(name: 'Negroni', user: user)}

  describe '#name' do
    subject { cocktail.name }

    it "returns the cocktail's name" do
      expect(subject).to eq('Negroni')
    end
  end
end

require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.create(email: 'dan@kangaroo.com', password: '123456') }
  let(:invalid_user) { User.create! }

  describe '#initialize' do
    it 'returns a user instance' do
      expect(user.class.to_s).to eq('User')
    end

    it 'returns an error for a user without email and password' do
      expect {invalid_user}.to raise_error(ActiveRecord::RecordInvalid)
    end
  end
end

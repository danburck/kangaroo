require 'rails_helper'

RSpec.describe Booking, type: :model do
  let(:user) { User.create(email: 'dan@kangaroo.com', password: '123456') }
  let(:bartender) { Bartender.create(user: user, name: "Dan's", address: 'Bouchéstr 2, 12059 Berlin')}
  let(:booking) { Booking.create(user: user, bartender: bartender) }
  let(:invalid_booking) { Booking.create! }

  describe '#initialize' do
    it 'returns a booking instance' do
      expect(booking.class.to_s).to eq('Booking')
    end

    it 'returns an error for a booking without user and email' do
      expect { invalid_booking }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end
end

# frozen_string_literal: true
# rubocop:disable all
require 'rails_helper'
RSpec.describe User, type: :model do
  subject do
    User.new(email: 'z@b.com',
             phone_number: 0,
             address: 'a',
             pincode: 0,
             password: '123456')
  end

  before { subject.save }

  ### Associations
  describe 'Associations' do
    it { should have_one(:card) }
    it { should have_many(:orders) }
    it { should have_many(:reviews) }
  end
  describe 'Validations' do
    it 'email should be present' do
      subject.email = nil
      expect(subject).to_not be_valid
    end
    it 'phone_number should be present' do
      subject.phone_number = nil
      expect(subject).to_not be_valid
    end
    it 'address should be present' do
      subject.address = nil
      expect(subject).to_not be_valid
    end
    it 'pincode should be present' do
      subject.pincode = nil
      expect(subject).to_not be_valid
    end
  end
  describe 'callbacks' do
    it 'creates a cart for user' do
      expect { subject.save }.to_not raise_error
    end
  end
end
# rubocop:enable all
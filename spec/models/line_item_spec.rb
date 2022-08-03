# frozen_string_literal: true

require 'rails_helper'
RSpec.describe LineItem, type: :model do
  subject { LineItem.new(quantity: 0) }

  before { subject.save }

  describe 'Associations' do
    it { should belong_to(:product) }
    it { should belong_to(:card) }
  end

  describe 'validation' do
    it 'quantity should be present' do
      subject.quantity = nil
      expect(subject).to_not be_valid
    end
  end
end

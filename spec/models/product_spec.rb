# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Product, type: :model do
  subject { Product.new(name: ' ', description: ' ', price: 0) }

  before { subject.save }

  describe 'Associations' do
    it { should have_many(:reviews) }
    it { should have_one_attached(:picture) }
  end

  describe 'Validations' do
    it 'name should be present' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'description should be present' do
      subject.description = nil
      expect(subject).to_not be_valid
    end

    it 'price should be present' do
      subject.price = nil
      expect(subject).to_not be_valid
    end
  end
end

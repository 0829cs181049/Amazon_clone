# frozen_string_literal: true

require 'rails_helper'
RSpec.describe Review, type: :model do
  subject { Review.new(body: ' ') }

  before { subject.save }

  describe 'Associations' do
    it { should belong_to(:user).without_validating_presence }

    it { should belong_to(:product).without_validating_presence }
  end

  describe 'Validations' do
    it 'body should be present ' do
      subject.body = nil
      expect(subject).to_not be_valid
    end
  end
end

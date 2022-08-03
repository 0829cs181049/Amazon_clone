# frozen_string_literal: true

require 'rails_helper'
RSpec.describe Card, type: :model do
  subject { Card.new }

  before { subject.save }

  describe 'Associations' do
    it { should belong_to(:user) }
    it { should have_many(:products) }
  end
end

# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Order, type: :model do
  subject { Order.new }

  before { subject.save }

  describe 'Associations' do
    it { should belong_to(:user) }
    # it { should have_many(:line_items) }
  end
end

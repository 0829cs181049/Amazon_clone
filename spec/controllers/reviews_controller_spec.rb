# frozen_string_literal: true

require 'rails_helper'
RSpec.describe ReviewsController, type: :controller do
  describe 'POST create' do
    it 'renders a successful response' do
      get :index
      expect(response.status).to eq(200)
    end
  end
end

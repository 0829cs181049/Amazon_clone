require 'rails_helper'

RSpec.describe "Productsearches", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/productsearch/index"
      expect(response).to have_http_status(:success)
    end
  end

end

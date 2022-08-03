# frozen_string_literal: true

require 'rails_helper'
RSpec.describe LineItemsController, type: :controller do
  describe 'POST create' do
    it 'create a new product' do
      post :create, params: { quantity: 1 }
      expect(response.status).to eq(302)
    end
  end

  describe 'DELETE destroy' do
    it 'destroys the requested product' do
      category = Category.create(name: 'category_first')
      product = Product.create(name: 'a', description: 'abc', price: 1, category_id: category.id)
      delete :destroy,
             params: { id: product.id, product: { name: 'a', description: 'abc', price: 1, category_id: category.id } }
      expect(response.status).to eq(302)
    end
  end
end

# frozen_string_literal: true

require 'rails_helper'
RSpec.describe ProductsController, type: :controller do
  # describe 'GET edit' do
  #   it 'render a successful response' do
  #     category = Category.create(name: 'category_first')
  #     product = Product.create(name: 'a', description: 'abc', price: 1, category_id: category.id)
  #     get :edit, params: { id: product.id }
  #     expect(response.status).to eq(302)
  #   end
  # end

  # describe 'GET new' do
  #   it 'renders a successful response' do
  #     get :new
  #     # expect(response).to be_successful
  #     expect(response.status).to eq(302)
  #  end
  # end

  # describe 'GET index' do
  #   it 'renders a successful response' do
  #     category = Category.new(name: :category_id)
  #     product = Product.create(name: 'a', description: 'abc', price: 1)
  #     product.save
  #     binding.pry
  #     get :index, id: product.id
  #     # expect(response).to have_http_status(200)
  #     expect(response.status).to eq(200)
  #   end
  # end

  describe 'GET index' do
    it 'renders a successful response' do
      product = Product.new(name: 'a', description: 'abc', price: 1)
      product.save
      get :index
      expect(response).to be_successful
    end
  end

  # describe 'GET show' do
  #   it 'renders a successful response' do
  #     product = Product.new(name: 'abc', description: 'kgf', price: 2)
  #     # product.save
  #     # binding.pry
  #     get :show, params: { id: product.id}
  #     expect(response.status).to eq(302)
  #   end
  # end

  # # # <----------------its working ---for create for product -------->

  # describe 'POST create' do
  #   it 'create a new product' do
  #     category = Category.create(name: 'category_first')
  #     product = Product.new(name: 'a', description: 'abc', price: 1, category_id: category.id)
  #     post :create, params: { id: product.id, product: { name: 'a', description: 'abc', price: 1, category_id:  } }
  #     expect(response.status).to eq(302)
  #   end
  # end

  # describe 'DELETE destroy' do
  #   it 'destroys the requested product' do
  #     category = Category.create(name: 'category_first')
  #     product = Product.create(name: 'a', description: 'abc', price: 1, category_id: category.id)
  #     delete :destroy, params: { id: product.id, product: { name: 'a', description: 'abc', price: 1, catego } }
  #     expect(response.status).to eq(302)
  #   end
  # end
end

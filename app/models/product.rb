# frozen_string_literal: true

class Product < ApplicationRecord
  has_one_attached :picture
  has_many :reviews, dependent: :destroy
  has_many :line_items, dependent: :destroy
  has_many :order_items, dependent: :destroy

  validates :description, presence: true
  validates :price, presence: true
  validates :name, presence: true
def search_key
end
  # include PgSearch
  # multisearchable against: :name

  # pg_search_scope :search_by_name, against: :name
  # pg_search_scope :search_for, against: %i(name description)
end

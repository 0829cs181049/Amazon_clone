# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :body, presence: true

  # include PgSearch
  # multisearchable against:  :body
  # pg_search_scope :search_by_body, against: :body
end

# frozen_string_literal: true

# lnfekl
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # has_many :reviews
  # has_one :card, dependent: :destroy
  # has_many :orders, dependent: :destroy
  has_many :orders
  has_many :reviews, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true
  validates :phone_number, presence: true
  validates :address, presence: true
  validates :pincode, presence: true

  after_create :create_cart

  # def create_cart
  #   # binding.pry
  #   Card.create(user_id: id)
  # end
end

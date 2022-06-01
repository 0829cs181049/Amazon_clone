class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # has_many :reviews
  # has_one :card, dependent: :destroy
  # has_many :orders, dependent: :destroy
  has_one :card
  has_many :orders
  has_many :reviews, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    
  after_create :create_card

  def create_cart
    Card.create(user_id:self.id)
  end
end

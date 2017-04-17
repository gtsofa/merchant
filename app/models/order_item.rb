class OrderItem < ApplicationRecord
  belongs_to  :Order
  belongs_to  :Product
  validates :order_id, :product_id, presence: true
end

class OrderItem < ApplicationRecord
  belongs_to  :Order
  belongs_to  :Product
  #validates :order_id, :product_id, presence: true
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0}

  def subtotal
    return quantity * product.price
    #quantity * product.price
  end
end

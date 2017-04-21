class OrderItem < ApplicationRecord
  belongs_to  :Order
  belongs_to  :Product
  validates :order_id, :product_id, presence: true

  def subtotal
    return item.quantity * item.product.price
    #quantity * product.price
  end
end

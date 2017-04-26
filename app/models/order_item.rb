class OrderItem < ApplicationRecord
  #attr_accessible :product_id, :order_id, :quantity
  #validates :order_id, presence: true
  #validates :product_id, presence: true
  #validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0}
  belongs_to :order
  belongs_to :product


  def subtotal
    quantity * product.price
    #quantity * product.price
  end
end

class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy
  has_many :products, :through => :order_items
  belongs_to :user

  def total
    total = order_items.inject(0) { |sum, p| sum + p.subtotal }
  end

end

class Product < ApplicationRecord
  has_many  :OrderItem
  validates_numericality_of :price
  validates   :stock, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}
  #stock_is_number,_is_an_integer,is_greater_than_or_equal_to_zero
    def price=(input)
      input.delete!("$")
      super
    end
end

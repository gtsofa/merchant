class Product < ApplicationRecord
  validates_numericality_of :price
  validates: stock, numericality: {only_integer: greater_than_or_equal_to: 0}
  #stock_is_number,_is_an_integer,is_greater_than_or_equal_to_zero
end

class Product < ApplicationRecord
    has_many :order_items
    before_save :set_subtotal



end
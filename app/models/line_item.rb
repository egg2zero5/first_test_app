class LineItem < ActiveRecord::Base
	belongs_to :order
	belongs_to :product
	belongs_to :cart
	
def total_price
product.price * quantity
end
	# line_item can't exist unless corresponding to cart & product rows exist
	# decide to belongs_to : XXX. XXX is a foregin_key in the table
end

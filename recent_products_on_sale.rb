# Given a product model: name, price, sale_price (with standard created_at and updated_at)

# Write a scope that fetches products that have been updated after certain date.

# Write a code that will fetch the most recent three products on sale (a product is on sale is when the sale_price is not equal to the price). The products must be ordered that the cheapest product appears first.
class ProductUpdated < ActiveRecord::Base
	Product.where("updated_at > :certain_date", params[:certain_date])
end

class SaleProduct < ActiveRecord::Base

	products_on_sale = []

	Product.all.each do |current_product|
		# check if product is on sale
		# i.e., if the price and sale_price are not equal
		if current_product.price != current_product.sale_price
			# product is on sale, so store to hash
			products_on_sale.push current_product.id
		else
			# do nothing
		end
	end

	products_on_sale.sort!

	# return the three most recent products on sale
	products_on_sale[0..2]

end
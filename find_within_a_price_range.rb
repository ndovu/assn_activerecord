# Given a product model with: name, price 
# Find all products priced more than 100 and less than 300. Order them by name and limit the results to 10 products.

products_between_100_and_300 = Product.where(:price => 100...300).order.limit(10)

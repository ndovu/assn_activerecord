# Given a user model with: first_name, last_name and email

# Find out all the users whose first_name, last_name or email exactly matches a given string: search_term

def return_exact_results
	# make empty array that will contain all users whose first_name, last_name, or email exactly matches a given string
	exact_search_results = []

	User.all.each do |user|
		if user.first_name == user.search_term || user.last_name == search_term || user.email == search_term
			exact_search_results.push user.id
		else
			# do nothing if search term is not exactly
		end
	end
	exact_search_results
end



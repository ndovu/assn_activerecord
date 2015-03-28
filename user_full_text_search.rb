# Given a user model with: first_name, last_name and email

# Find out all the users whose first_name, last_name or email exactly or partially (string contained inside) matches a given string: search_term

def return_contain_results
	# returns array of ids with where users first_name, last_name, or email exactly or partially matches a given string using the where method.
	user_id_search_results = User.where(first_name: search_term, last_name: search_term, email: search_term).ids
end

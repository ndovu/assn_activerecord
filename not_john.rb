# Given a user model with: first_name, last_name and email
# Find all the users whose neither first_name nor last_name is "john"

user_not_john = User.where("first_name != name AND last_name != name", {name: params[:name]})
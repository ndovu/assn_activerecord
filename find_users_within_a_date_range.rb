# Given a user model with: first_name, last_name and email with created_at and updated_at dates
# Find out all the users that were created after date1 and before date2
# assume there is a class variable of date1 and date2

User.where("created_at >= :date1 AND created_at <= :date2",
  {date1: params[:date1], date2: params[:date2]})


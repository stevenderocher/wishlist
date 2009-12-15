# Given /^a list exists with a title of "([^\"]*)"$/ do |title|
#   @list = Factory.create(:list, :title => "title")
# end

Given /^the list "([^\"]*)" belongs to "([^\"]*)"$/ do |list_title, email|
  list = List.find_by_title(list_title)
  user = User.find_by_email(email)
  list.update_attribute(:user_id, user.id)
end

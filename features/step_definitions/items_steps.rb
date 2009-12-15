Given /^the item "([^\"]*)" belongs to "([^\"]*)"$/ do |item_name, list_title|
  item = Item.find_by_productname(item_name)
  list = List.find_by_title(list_title)
  item.update_attribute(:list_id, list.id)
end

Given /^I reserve the item "([^\"]*)"$/ do |item_name|
  item = Item.find_by_productname(item_name)
  item.reserve
end

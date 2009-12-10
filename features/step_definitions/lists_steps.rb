Given /^a list exists with a title of "([^\"]*)"$/ do |title|
  @list = Factory.create(:list, :title => title)
end

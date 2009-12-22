# Scenario: Visitor signs up and tries to reserve item twice
# 	Given a user exists with an email of "s@d.com"
# 	And a list exists with a title of "xmas"
# 	And the list "xmas" belongs to "s@d.com"
# 	And an item exists with a productname of "gift"
# 	And the item "gift" belongs to "xmas"
# 	And I am on the list page for the "xmas" list
# 	And I follow "gift"
# 	And I press "Reserve"
# 	Then I should see "Sign up"
# 	When I press "Create"
# 	Then I should see "gift"
# 	And I press "Reserve"
# 	Then I should see "You have already reserved this item"
	
	Scenario: User signs up with valid data
	  Given I am on the homepage
      And I follow "Sign Up"
      And I fill in "Email" with "email@person.com"
      And I fill in "Password" with "password"
      And I fill in "Password confirmation" with "password"
      And I press "Sign Up"
      Then I should see "instructions for confirming"
      And a confirmation message should be sent to "email@person.com"
	
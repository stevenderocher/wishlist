Scenario: Create a list model
	Given a list exists with a title of "xmas"
	And I am on the lists page
	Then I should see "xmas"
	
Scenario: User should see a list of lists
	Given a list exists with a title of "xmas"
	And a list exists with a title of "birthday"
	And I am on the lists page
	Then I should see "xmas"
	And I should see "birthday"
	
Scenario: View a list
	Given a user exists with an email of "s@d.com"
	And a list exists with a title of "xmas"
	And the list "xmas" belongs to "s@d.com"
	When I go to the lists page
	And I follow "xmas"
	Then I should see "s@d.com"
	And I should see "xmas"
	
Scenario: View a users list
	Given a user exists with an email of "s@d.com"
	And a list exists with a title of "xmas"
	And the list "xmas" belongs to "s@d.com"
	When I go to the users page
	And show me the page
	And I follow "s@d.com"
	Then I should see "s@d.com"
	And I should see "xmas"
Scenario: Sign up redirects to previously viewed screen

		
Scenario: User makes a new list
		Given a user exists with an email of "s@d.com"
		And I am on the homepage
		And I follow "Make yourself a list"
		Then I should see "s@d.com"
		And I should see "Create"
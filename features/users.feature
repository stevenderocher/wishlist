Scenario: Sign up redirects to previously viewed screen
		Given a user exists with an email of "s@d.com"
		And I am on the users page
		Then I should see "s@d.com"
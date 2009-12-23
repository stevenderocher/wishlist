Scenario: Sign up redirects to previously viewed screen

		
Scenario: User makes a new list
		Given a user exists with an email of "s@d.com"
		And I am on the homepage
		And I follow "Make yourself a list"
		Then I should see "s@d.com"
		And I should see "Create"
		
Scenario: When not signed in I should see Sign In
	Given I am on the homepage
	Then I should see "Sign In"
	
		
Scenario: When signed in header should users email
	Given I am signed up and confirmed as "email@person.com/password"
    When I sign in as "email@person.com/password"
	And I am on the homepage
    Then I should see "email@person.com"

Scenario: a list should be a list of items
	Given a list exists with a title of "xmas"
	And an item exists with a productname of "nintendo wii"
	And an item exists with a productname of "mommy and daddy back together"
	And the item "nintendo wii" belongs to "xmas"
	And the item "mommy and daddy back together" belongs to "xmas"
	And I am on the list page for the "xmas" list
	Then I should see "nintendo wii"
	And I should see "mommy and daddy back together"
	
Scenario: Visitors should be able to reserve items from lists
	Given a list exists with a title of "xmas"
	And an item exists with a productname of "nintendo wii"
	And an item exists with a productname of "mommy and daddy back together"
	And the item "nintendo wii" belongs to "xmas"
	And the item "mommy and daddy back together" belongs to "xmas"
	And I am on the list page for the "xmas" list
	And I follow "nintendo wii"
	And I press "Reserve"
	Then I should see "You have reserved this item"
	And I should see "nintendo wii"

# Scenario:	Visitors should not be able to reserve already reserved items from lists
# 	Given a list exists with a title of "xmas"
# 	And an item exists with a productname of "nintendo wii"
# 	And an item exists with a productname of "mommy and daddy back together"
# 	And the item "nintendo wii" belongs to "xmas"
# 	And the item "mommy and daddy back together" belongs to "xmas"
# 	And I am on the list page for the "xmas" list
# 	And I follow "xmas"
# 	And I follow "reserve"
# 	And I am on the list page for the "xmas" list
# 	And I follow "xmas"
# 	And I follow "reserve"
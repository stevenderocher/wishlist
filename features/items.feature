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

Scenario: Add item to list
	Given a user exists with an email of "s@d.com"
	And a list exists with a title of "xmas"
	And the list "xmas" belongs to "s@d.com"
	And I am on the user page for the user "s@d.com"
	And I follow "xmas"
	And I follow "Add an Item"
	And I fill in "Product name" with "item"
	And I fill in "Seller" with "something"
	And I fill in "Price" with "something"
	And I fill in "Quantity" with "something"
	And I fill in "Product url" with "something"
	And I fill in "Product image url" with "something"
	And I fill in "Description" with "something"
    And I press "Add"
    Then I should see "s@d.com"
	And I should see "xmas"
	And I should see "item"
	
Scenario: Update Item
	Given an item exists with a product name of "ma dix"
	And I am on the item page for "ma dix"
	And I press "Edit"
	And I fill in "Product name" with "ma big dix"
	And I press "Update"
	Then I should see "ma big dix"
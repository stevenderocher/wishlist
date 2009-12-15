require 'test_helper'
require 'redgreen'

class ItemTest < ActiveSupport::TestCase

  should "be valid with factory" do
    assert_valid Factory.build(:item)
  end
  
  should "be" do
    item = Item.new
    assert item
  end
  
  should_belong_to  :list

end
require 'test_helper'
require 'redgreen'

class ListTest < ActiveSupport::TestCase

  should "be valid with factory" do
    assert_valid Factory.build(:list)
  end
  
  should "be" do
    list = List.new
    assert list
  end
  
  should_belong_to  :user
  should_have_many :items

end
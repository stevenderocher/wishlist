require 'test_helper'
require 'redgreen'

class UserTest < ActiveSupport::TestCase
  
  should "be valid with factories" do
    assert_valid Factory.build(:user)
    assert_valid Factory.build(:email_confirmed_user)
  end
  
  should_route :get, "/users", :action => :index
  
end


require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  user =User.new(email: "jesus@gmail.com", first_name: "jesus", last_name: "montano", date_of_birth: "1995-12-22")
end

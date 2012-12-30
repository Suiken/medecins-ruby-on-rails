require 'test_helper'

class IndexControllerTest < ActionController::TestCase
  test "should get Index" do
    get :Index
    assert_response :success
  end

end

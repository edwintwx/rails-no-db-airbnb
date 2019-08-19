require 'test_helper'

class FlatsControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get flats_list_url
    assert_response :success
  end

  test "should get flat" do
    get flats_flat_url
    assert_response :success
  end

end

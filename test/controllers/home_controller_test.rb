require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get start" do
    get home_start_url
    assert_response :success
  end

  test "should get aboutus" do
    get home_aboutus_url
    assert_response :success
  end

  test "should get aboutwedding" do
    get home_aboutwedding_url
    assert_response :success
  end

end

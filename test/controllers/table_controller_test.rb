require 'test_helper'

class TableControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get table_input_url
    assert_response :success
  end

  test "should get view_one" do
    get table_view_one_url
    assert_response :success
  end

  test "should get view_two" do
    get table_view_two_url
    assert_response :success
  end

  test "should get view_tree" do
    get table_view_tree_url
    assert_response :success
  end

end

require 'test_helper'

class RootControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get root_top_url
    assert_response :success
  end

  test "should get index" do
    get root_index_url
    assert_response :success
  end

  test "should get show" do
    get root_show_url
    assert_response :success
  end

  test "should get edit" do
    get root_edit_url
    assert_response :success
  end

end

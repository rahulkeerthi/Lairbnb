require 'test_helper'

class LairsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get lairs_show_url
    assert_response :success
  end

  test "should get new" do
    get lairs_new_url
    assert_response :success
  end

  test "should get create" do
    get lairs_create_url
    assert_response :success
  end

  test "should get edit" do
    get lairs_edit_url
    assert_response :success
  end

  test "should get update" do
    get lairs_update_url
    assert_response :success
  end

  test "should get destroy" do
    get lairs_destroy_url
    assert_response :success
  end

end

require 'test_helper'

class PrivatepicsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get privatepics_index_url
    assert_response :success
  end

  test "should get show" do
    get privatepics_show_url
    assert_response :success
  end

  test "should get new" do
    get privatepics_new_url
    assert_response :success
  end

  test "should get create" do
    get privatepics_create_url
    assert_response :success
  end

  test "should get update" do
    get privatepics_update_url
    assert_response :success
  end

  test "should get edit" do
    get privatepics_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get privatepics_destroy_url
    assert_response :success
  end

end

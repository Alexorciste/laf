require 'test_helper'

class PrivatecatsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get privatecats_index_url
    assert_response :success
  end

  test "should get show" do
    get privatecats_show_url
    assert_response :success
  end

  test "should get new" do
    get privatecats_new_url
    assert_response :success
  end

  test "should get create" do
    get privatecats_create_url
    assert_response :success
  end

  test "should get update" do
    get privatecats_update_url
    assert_response :success
  end

  test "should get edit" do
    get privatecats_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get privatecats_destroy_url
    assert_response :success
  end

end

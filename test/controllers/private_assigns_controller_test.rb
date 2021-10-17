require 'test_helper'

class PrivateAssignsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get private_assigns_index_url
    assert_response :success
  end

  test "should get show" do
    get private_assigns_show_url
    assert_response :success
  end

  test "should get new" do
    get private_assigns_new_url
    assert_response :success
  end

  test "should get create" do
    get private_assigns_create_url
    assert_response :success
  end

  test "should get update" do
    get private_assigns_update_url
    assert_response :success
  end

  test "should get edit" do
    get private_assigns_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get private_assigns_destroy_url
    assert_response :success
  end

end

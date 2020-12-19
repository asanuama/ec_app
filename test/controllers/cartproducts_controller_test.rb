require 'test_helper'

class CartproductsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get cartproducts_create_url
    assert_response :success
  end

  test "should get index" do
    get cartproducts_index_url
    assert_response :success
  end

  test "should get update" do
    get cartproducts_update_url
    assert_response :success
  end

  test "should get destory" do
    get cartproducts_destory_url
    assert_response :success
  end

  test "should get destory_all" do
    get cartproducts_destory_all_url
    assert_response :success
  end

end

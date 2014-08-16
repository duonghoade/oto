require 'test_helper'

class AutoSalesControllerTest < ActionController::TestCase
  setup do
    @auto_sale = auto_sales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:auto_sales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create auto_sale" do
    assert_difference('AutoSale.count') do
      post :create, auto_sale: { auto_id: @auto_sale.auto_id, price: @auto_sale.price, title: @auto_sale.title }
    end

    assert_redirected_to auto_sale_path(assigns(:auto_sale))
  end

  test "should show auto_sale" do
    get :show, id: @auto_sale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @auto_sale
    assert_response :success
  end

  test "should update auto_sale" do
    patch :update, id: @auto_sale, auto_sale: { auto_id: @auto_sale.auto_id, price: @auto_sale.price, title: @auto_sale.title }
    assert_redirected_to auto_sale_path(assigns(:auto_sale))
  end

  test "should destroy auto_sale" do
    assert_difference('AutoSale.count', -1) do
      delete :destroy, id: @auto_sale
    end

    assert_redirected_to auto_sales_path
  end
end

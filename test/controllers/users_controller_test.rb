require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get users" do
    get users_users_url
    assert_response :success
  end

  test "should get trip_transactions" do
    get users_trip_transactions_url
    assert_response :success
  end

  test "should get balance_loads" do
    get users_balance_loads_url
    assert_response :success
  end

  test "should get history_loads" do
    get users_history_loads_url
    assert_response :success
  end

end

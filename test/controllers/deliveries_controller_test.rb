require "test_helper"

class DeliveriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @delivery = deliveries(:one)
  end

  test "should get index" do
    get deliveries_url
    assert_response :success
  end

  test "should get new" do
    get new_delivery_url
    assert_response :success
  end

  test "should create delivery" do
    assert_difference("Delivery.count") do
      post deliveries_url, params: { delivery: { cost: @delivery.cost, delivery_address: @delivery.delivery_address, distance: @delivery.distance, driver_name: @delivery.driver_name, pickup_address: @delivery.pickup_address, scheduled_time: @delivery.scheduled_time, weight: @delivery.weight } }
    end

    assert_redirected_to edit_delivery_url(Delivery.last)
  end

  test "should show delivery" do
    get delivery_url(@delivery)
    assert_response :success
  end

  test "should get edit" do
    get edit_delivery_url(@delivery)
    assert_response :success
  end

  test "should update delivery" do
    patch delivery_url(@delivery), params: { delivery: { cost: @delivery.cost, delivery_address: @delivery.delivery_address, distance: @delivery.distance, driver_name: @delivery.driver_name, pickup_address: @delivery.pickup_address, scheduled_time: @delivery.scheduled_time, weight: @delivery.weight } }
    assert_redirected_to edit_delivery_url(@delivery)
  end

  test "should destroy delivery" do
    assert_difference("Delivery.count", -1) do
      delete delivery_url(@delivery)
    end

    assert_redirected_to deliveries_url
  end
end

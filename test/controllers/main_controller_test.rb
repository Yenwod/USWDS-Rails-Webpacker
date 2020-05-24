require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get landing" do
    get main_landing_url
    assert_response :success
  end

  test "should get features" do
    get main_features_url
    assert_response :success
  end

  test "should get pricing" do
    get main_pricing_url
    assert_response :success
  end

  test "should get about" do
    get main_about_url
    assert_response :success
  end

  test "should get contact" do
    get main_contact_url
    assert_response :success
  end

  test "should get resources" do
    get main_resources_url
    assert_response :success
  end

end

require 'test_helper'

class BazesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @baze = bazes(:one)
  end

  test "should get index" do
    get bazes_url
    assert_response :success
  end

  test "should get new" do
    get new_baze_url
    assert_response :success
  end

  test "should create baze" do
    assert_difference('Baze.count') do
      post bazes_url, params: { baze: { title: @baze.title } }
    end

    assert_redirected_to baze_url(Baze.last)
  end

  test "should show baze" do
    get baze_url(@baze)
    assert_response :success
  end

  test "should get edit" do
    get edit_baze_url(@baze)
    assert_response :success
  end

  test "should update baze" do
    patch baze_url(@baze), params: { baze: { title: @baze.title } }
    assert_redirected_to baze_url(@baze)
  end

  test "should destroy baze" do
    assert_difference('Baze.count', -1) do
      delete baze_url(@baze)
    end

    assert_redirected_to bazes_url
  end
end

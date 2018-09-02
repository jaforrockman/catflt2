require 'test_helper'

class WivesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wife = wives(:one)
  end

  test "should get index" do
    get wives_url
    assert_response :success
  end

  test "should get new" do
    get new_wife_url
    assert_response :success
  end

  test "should create wife" do
    assert_difference('Wife.count') do
      post wives_url, params: { wife: { dob: @wife.dob, dom: @wife.dom, name: @wife.name, person_id: @wife.person_id } }
    end

    assert_redirected_to wife_url(Wife.last)
  end

  test "should show wife" do
    get wife_url(@wife)
    assert_response :success
  end

  test "should get edit" do
    get edit_wife_url(@wife)
    assert_response :success
  end

  test "should update wife" do
    patch wife_url(@wife), params: { wife: { dob: @wife.dob, dom: @wife.dom, name: @wife.name, person_id: @wife.person_id } }
    assert_redirected_to wife_url(@wife)
  end

  test "should destroy wife" do
    assert_difference('Wife.count', -1) do
      delete wife_url(@wife)
    end

    assert_redirected_to wives_url
  end
end

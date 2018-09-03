require 'test_helper'

class LrcsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lrc = lrcs(:one)
  end

  test "should get index" do
    get lrcs_url
    assert_response :success
  end

  test "should get new" do
    get new_lrc_url
    assert_response :success
  end

  test "should create lrc" do
    assert_difference('Lrc.count') do
      post lrcs_url, params: { lrc: { closed: @lrc.closed, issued: @lrc.issued, iv_no: @lrc.iv_no, person_id: @lrc.person_id, reg_sl: @lrc.reg_sl } }
    end

    assert_redirected_to lrc_url(Lrc.last)
  end

  test "should show lrc" do
    get lrc_url(@lrc)
    assert_response :success
  end

  test "should get edit" do
    get edit_lrc_url(@lrc)
    assert_response :success
  end

  test "should update lrc" do
    patch lrc_url(@lrc), params: { lrc: { closed: @lrc.closed, issued: @lrc.issued, iv_no: @lrc.iv_no, person_id: @lrc.person_id, reg_sl: @lrc.reg_sl } }
    assert_redirected_to lrc_url(@lrc)
  end

  test "should destroy lrc" do
    assert_difference('Lrc.count', -1) do
      delete lrc_url(@lrc)
    end

    assert_redirected_to lrcs_url
  end
end

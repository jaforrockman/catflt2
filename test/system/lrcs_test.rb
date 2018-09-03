require "application_system_test_case"

class LrcsTest < ApplicationSystemTestCase
  setup do
    @lrc = lrcs(:one)
  end

  test "visiting the index" do
    visit lrcs_url
    assert_selector "h1", text: "Lrcs"
  end

  test "creating a Lrc" do
    visit lrcs_url
    click_on "New Lrc"

    fill_in "Closed", with: @lrc.closed
    fill_in "Issued", with: @lrc.issued
    fill_in "Iv No", with: @lrc.iv_no
    fill_in "Person", with: @lrc.person_id
    fill_in "Reg Sl", with: @lrc.reg_sl
    click_on "Create Lrc"

    assert_text "Lrc was successfully created"
    click_on "Back"
  end

  test "updating a Lrc" do
    visit lrcs_url
    click_on "Edit", match: :first

    fill_in "Closed", with: @lrc.closed
    fill_in "Issued", with: @lrc.issued
    fill_in "Iv No", with: @lrc.iv_no
    fill_in "Person", with: @lrc.person_id
    fill_in "Reg Sl", with: @lrc.reg_sl
    click_on "Update Lrc"

    assert_text "Lrc was successfully updated"
    click_on "Back"
  end

  test "destroying a Lrc" do
    visit lrcs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lrc was successfully destroyed"
  end
end

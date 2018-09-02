require "application_system_test_case"

class WivesTest < ApplicationSystemTestCase
  setup do
    @wife = wives(:one)
  end

  test "visiting the index" do
    visit wives_url
    assert_selector "h1", text: "Wives"
  end

  test "creating a Wife" do
    visit wives_url
    click_on "New Wife"

    fill_in "Dob", with: @wife.dob
    fill_in "Dom", with: @wife.dom
    fill_in "Name", with: @wife.name
    fill_in "Person", with: @wife.person_id
    click_on "Create Wife"

    assert_text "Wife was successfully created"
    click_on "Back"
  end

  test "updating a Wife" do
    visit wives_url
    click_on "Edit", match: :first

    fill_in "Dob", with: @wife.dob
    fill_in "Dom", with: @wife.dom
    fill_in "Name", with: @wife.name
    fill_in "Person", with: @wife.person_id
    click_on "Update Wife"

    assert_text "Wife was successfully updated"
    click_on "Back"
  end

  test "destroying a Wife" do
    visit wives_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wife was successfully destroyed"
  end
end

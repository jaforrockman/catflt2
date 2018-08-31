require "application_system_test_case"

class BazesTest < ApplicationSystemTestCase
  setup do
    @baze = bazes(:one)
  end

  test "visiting the index" do
    visit bazes_url
    assert_selector "h1", text: "Bazes"
  end

  test "creating a Baze" do
    visit bazes_url
    click_on "New Baze"

    fill_in "Title", with: @baze.title
    click_on "Create Baze"

    assert_text "Baze was successfully created"
    click_on "Back"
  end

  test "updating a Baze" do
    visit bazes_url
    click_on "Edit", match: :first

    fill_in "Title", with: @baze.title
    click_on "Update Baze"

    assert_text "Baze was successfully updated"
    click_on "Back"
  end

  test "destroying a Baze" do
    visit bazes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Baze was successfully destroyed"
  end
end

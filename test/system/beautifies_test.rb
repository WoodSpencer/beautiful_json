require "application_system_test_case"

class BeautifiesTest < ApplicationSystemTestCase
  setup do
    @beautify = beautifies(:one)
  end

  test "visiting the index" do
    visit beautifies_url
    assert_selector "h1", text: "Beautifies"
  end

  test "creating a Beautify" do
    visit beautifies_url
    click_on "New Beautify"

    fill_in "Content", with: @beautify.content
    click_on "Create Beautify"

    assert_text "Beautify was successfully created"
    click_on "Back"
  end

  test "updating a Beautify" do
    visit beautifies_url
    click_on "Edit", match: :first

    fill_in "Content", with: @beautify.content
    click_on "Update Beautify"

    assert_text "Beautify was successfully updated"
    click_on "Back"
  end

  test "destroying a Beautify" do
    visit beautifies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Beautify was successfully destroyed"
  end
end

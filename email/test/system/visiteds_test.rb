require "application_system_test_case"

class VisitedsTest < ApplicationSystemTestCase
  setup do
    @visited = visiteds(:one)
  end

  test "visiting the index" do
    visit visiteds_url
    assert_selector "h1", text: "Visiteds"
  end

  test "creating a Visited" do
    visit visiteds_url
    click_on "New Visited"

    fill_in "Times", with: @visited.times
    click_on "Create Visited"

    assert_text "Visited was successfully created"
    click_on "Back"
  end

  test "updating a Visited" do
    visit visiteds_url
    click_on "Edit", match: :first

    fill_in "Times", with: @visited.times
    click_on "Update Visited"

    assert_text "Visited was successfully updated"
    click_on "Back"
  end

  test "destroying a Visited" do
    visit visiteds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Visited was successfully destroyed"
  end
end

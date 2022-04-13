require "application_system_test_case"

class NeedsTest < ApplicationSystemTestCase
  setup do
    @need = needs(:one)
  end

  test "visiting the index" do
    visit needs_url
    assert_selector "h1", text: "Needs"
  end

  test "should create need" do
    visit needs_url
    click_on "New need"

    fill_in "Name", with: @need.name
    click_on "Create Need"

    assert_text "Need was successfully created"
    click_on "Back"
  end

  test "should update Need" do
    visit need_url(@need)
    click_on "Edit this need", match: :first

    fill_in "Name", with: @need.name
    click_on "Update Need"

    assert_text "Need was successfully updated"
    click_on "Back"
  end

  test "should destroy Need" do
    visit need_url(@need)
    click_on "Destroy this need", match: :first

    assert_text "Need was successfully destroyed"
  end
end

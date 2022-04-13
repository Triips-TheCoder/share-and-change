require "application_system_test_case"

class CapsulesTest < ApplicationSystemTestCase
  setup do
    @capsule = capsules(:one)
  end

  test "visiting the index" do
    visit capsules_url
    assert_selector "h1", text: "Capsules"
  end

  test "should create capsule" do
    visit capsules_url
    click_on "New capsule"

    fill_in "Charity", with: @capsule.charity_id
    fill_in "First name", with: @capsule.first_name
    fill_in "Last name", with: @capsule.last_name
    fill_in "Need", with: @capsule.need_id
    fill_in "Poster", with: @capsule.poster
    fill_in "Quote", with: @capsule.quote
    fill_in "Video", with: @capsule.video
    click_on "Create Capsule"

    assert_text "Capsule was successfully created"
    click_on "Back"
  end

  test "should update Capsule" do
    visit capsule_url(@capsule)
    click_on "Edit this capsule", match: :first

    fill_in "Charity", with: @capsule.charity_id
    fill_in "First name", with: @capsule.first_name
    fill_in "Last name", with: @capsule.last_name
    fill_in "Need", with: @capsule.need_id
    fill_in "Poster", with: @capsule.poster
    fill_in "Quote", with: @capsule.quote
    fill_in "Video", with: @capsule.video
    click_on "Update Capsule"

    assert_text "Capsule was successfully updated"
    click_on "Back"
  end

  test "should destroy Capsule" do
    visit capsule_url(@capsule)
    click_on "Destroy this capsule", match: :first

    assert_text "Capsule was successfully destroyed"
  end
end

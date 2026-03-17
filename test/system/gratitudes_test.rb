require "application_system_test_case"

class GratitudesTest < ApplicationSystemTestCase
  setup do
    @gratitude = gratitudes(:one)
  end

  test "visiting the index" do
    visit gratitudes_url

    assert_selector "h1", text: "My Gratitudes"
  end

  test "should create gratitude" do
    visit gratitudes_url
    click_on "Add Gratitude", match: :first

    fill_in "Title", with: "Beautiful day"
    fill_in "Body", with: "I am grateful for this wonderful day"
    click_on "Create Gratitude"

    assert_text "Gratitude was successfully created"
    assert_text "Beautiful day"
    assert_text "I am grateful for this wonderful day"
  end

  test "should show validation errors" do
    visit new_gratitude_url

    click_on "Create Gratitude"

    assert_text "prohibited this gratitude from being saved"
  end

  test "should show gratitude" do
    visit gratitude_url(@gratitude)

    assert_text @gratitude.title
    assert_text @gratitude.body
  end

  test "should update gratitude" do
    visit gratitude_url(@gratitude)
    click_on "Edit"

    fill_in "Title", with: "Updated title"
    click_on "Update Gratitude"

    assert_text "Gratitude was successfully updated"
    assert_text "Updated title"
  end

  test "should destroy gratitude" do
    visit gratitude_url(@gratitude)

    accept_confirm do
      click_on "Delete"
    end

    assert_text "Gratitude was successfully destroyed"
  end
end

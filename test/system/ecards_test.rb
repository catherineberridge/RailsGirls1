require "application_system_test_case"

class EcardsTest < ApplicationSystemTestCase
  setup do
    @ecard = ecards(:one)
  end

  test "visiting the index" do
    visit ecards_url
    assert_selector "h1", text: "Ecards"
  end

  test "should create ecard" do
    visit ecards_url
    click_on "New ecard"

    fill_in "Description", with: @ecard.description
    fill_in "Name", with: @ecard.name
    fill_in "Picture", with: @ecard.picture
    click_on "Create Ecard"

    assert_text "Ecard was successfully created"
    click_on "Back"
  end

  test "should update Ecard" do
    visit ecard_url(@ecard)
    click_on "Edit this ecard", match: :first

    fill_in "Description", with: @ecard.description
    fill_in "Name", with: @ecard.name
    fill_in "Picture", with: @ecard.picture
    click_on "Update Ecard"

    assert_text "Ecard was successfully updated"
    click_on "Back"
  end

  test "should destroy Ecard" do
    visit ecard_url(@ecard)
    click_on "Destroy this ecard", match: :first

    assert_text "Ecard was successfully destroyed"
  end
end

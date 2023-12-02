require "application_system_test_case"

class EmessagesTest < ApplicationSystemTestCase
  setup do
    @emessage = emessages(:one)
  end

  test "visiting the index" do
    visit emessages_url
    assert_selector "h1", text: "Emessages"
  end

  test "should create emessage" do
    visit emessages_url
    click_on "New emessage"

    fill_in "Ecard", with: @emessage.ecard_id
    fill_in "From email", with: @emessage.from_email
    fill_in "Message", with: @emessage.message
    fill_in "To email", with: @emessage.to_email
    click_on "Create Emessage"

    assert_text "Emessage was successfully created"
    click_on "Back"
  end

  test "should update Emessage" do
    visit emessage_url(@emessage)
    click_on "Edit this emessage", match: :first

    fill_in "Ecard", with: @emessage.ecard_id
    fill_in "From email", with: @emessage.from_email
    fill_in "Message", with: @emessage.message
    fill_in "To email", with: @emessage.to_email
    click_on "Update Emessage"

    assert_text "Emessage was successfully updated"
    click_on "Back"
  end

  test "should destroy Emessage" do
    visit emessage_url(@emessage)
    click_on "Destroy this emessage", match: :first

    assert_text "Emessage was successfully destroyed"
  end
end

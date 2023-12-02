require "test_helper"

class EmessagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @emessage = emessages(:one)
  end

  test "should get index" do
    get emessages_url
    assert_response :success
  end

  test "should get new" do
    get new_emessage_url
    assert_response :success
  end

  test "should create emessage" do
    assert_difference("Emessage.count") do
      post emessages_url, params: { emessage: { ecard_id: @emessage.ecard_id, from_email: @emessage.from_email, message: @emessage.message, to_email: @emessage.to_email } }
    end

    assert_redirected_to emessage_url(Emessage.last)
  end

  test "should show emessage" do
    get emessage_url(@emessage)
    assert_response :success
  end

  test "should get edit" do
    get edit_emessage_url(@emessage)
    assert_response :success
  end

  test "should update emessage" do
    patch emessage_url(@emessage), params: { emessage: { ecard_id: @emessage.ecard_id, from_email: @emessage.from_email, message: @emessage.message, to_email: @emessage.to_email } }
    assert_redirected_to emessage_url(@emessage)
  end

  test "should destroy emessage" do
    assert_difference("Emessage.count", -1) do
      delete emessage_url(@emessage)
    end

    assert_redirected_to emessages_url
  end
end

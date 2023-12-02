require "test_helper"

class EcardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ecard = ecards(:one)
  end

  test "should get index" do
    get ecards_url
    assert_response :success
  end

  test "should get new" do
    get new_ecard_url
    assert_response :success
  end

  test "should create ecard" do
    assert_difference("Ecard.count") do
      post ecards_url, params: { ecard: { description: @ecard.description, name: @ecard.name, picture: @ecard.picture } }
    end

    assert_redirected_to ecard_url(Ecard.last)
  end

  test "should show ecard" do
    get ecard_url(@ecard)
    assert_response :success
  end

  test "should get edit" do
    get edit_ecard_url(@ecard)
    assert_response :success
  end

  test "should update ecard" do
    patch ecard_url(@ecard), params: { ecard: { description: @ecard.description, name: @ecard.name, picture: @ecard.picture } }
    assert_redirected_to ecard_url(@ecard)
  end

  test "should destroy ecard" do
    assert_difference("Ecard.count", -1) do
      delete ecard_url(@ecard)
    end

    assert_redirected_to ecards_url
  end
end

require "test_helper"

class CapsulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @capsule = capsules(:one)
  end

  test "should get index" do
    get capsules_url
    assert_response :success
  end

  test "should get new" do
    get new_capsule_url
    assert_response :success
  end

  test "should create capsule" do
    assert_difference("Capsule.count") do
      post capsules_url, params: { capsule: { charity_id: @capsule.charity_id, first_name: @capsule.first_name, last_name: @capsule.last_name, need_id: @capsule.need_id, poster: @capsule.poster, quote: @capsule.quote, video: @capsule.video } }
    end

    assert_redirected_to capsule_url(Capsule.last)
  end

  test "should show capsule" do
    get capsule_url(@capsule)
    assert_response :success
  end

  test "should get edit" do
    get edit_capsule_url(@capsule)
    assert_response :success
  end

  test "should update capsule" do
    patch capsule_url(@capsule), params: { capsule: { charity_id: @capsule.charity_id, first_name: @capsule.first_name, last_name: @capsule.last_name, need_id: @capsule.need_id, poster: @capsule.poster, quote: @capsule.quote, video: @capsule.video } }
    assert_redirected_to capsule_url(@capsule)
  end

  test "should destroy capsule" do
    assert_difference("Capsule.count", -1) do
      delete capsule_url(@capsule)
    end

    assert_redirected_to capsules_url
  end
end

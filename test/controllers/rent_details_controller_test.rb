require "test_helper"

class RentDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rent_detail = rent_details(:one)
  end

  test "should get index" do
    get rent_details_url
    assert_response :success
  end

  test "should get new" do
    get new_rent_detail_url
    assert_response :success
  end

  test "should create rent_detail" do
    assert_difference("RentDetail.count") do
      post rent_details_url, params: { rent_detail: { hours: @rent_detail.hours, membership_id: @rent_detail.membership_id } }
    end

    assert_redirected_to rent_detail_url(RentDetail.last)
  end

  test "should show rent_detail" do
    get rent_detail_url(@rent_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_rent_detail_url(@rent_detail)
    assert_response :success
  end

  test "should update rent_detail" do
    patch rent_detail_url(@rent_detail), params: { rent_detail: { hours: @rent_detail.hours, membership_id: @rent_detail.membership_id } }
    assert_redirected_to rent_detail_url(@rent_detail)
  end

  test "should destroy rent_detail" do
    assert_difference("RentDetail.count", -1) do
      delete rent_detail_url(@rent_detail)
    end

    assert_redirected_to rent_details_url
  end
end

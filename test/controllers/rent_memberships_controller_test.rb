require "test_helper"

class RentMembershipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rent_membership = rent_memberships(:one)
  end

  test "should get index" do
    get rent_memberships_url
    assert_response :success
  end

  test "should get new" do
    get new_rent_membership_url
    assert_response :success
  end

  test "should create rent_membership" do
    assert_difference("RentMembership.count") do
      post rent_memberships_url, params: { rent_membership: { membership_id: @rent_membership.membership_id, rent_id: @rent_membership.rent_id } }
    end

    assert_redirected_to rent_membership_url(RentMembership.last)
  end

  test "should show rent_membership" do
    get rent_membership_url(@rent_membership)
    assert_response :success
  end

  test "should get edit" do
    get edit_rent_membership_url(@rent_membership)
    assert_response :success
  end

  test "should update rent_membership" do
    patch rent_membership_url(@rent_membership), params: { rent_membership: { membership_id: @rent_membership.membership_id, rent_id: @rent_membership.rent_id } }
    assert_redirected_to rent_membership_url(@rent_membership)
  end

  test "should destroy rent_membership" do
    assert_difference("RentMembership.count", -1) do
      delete rent_membership_url(@rent_membership)
    end

    assert_redirected_to rent_memberships_url
  end
end

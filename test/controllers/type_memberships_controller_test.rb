require "test_helper"

class TypeMembershipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_membership = type_memberships(:one)
  end

  test "should get index" do
    get type_memberships_url
    assert_response :success
  end

  test "should get new" do
    get new_type_membership_url
    assert_response :success
  end

  test "should create type_membership" do
    assert_difference("TypeMembership.count") do
      post type_memberships_url, params: { type_membership: { discount: @type_membership.discount, name: @type_membership.name } }
    end

    assert_redirected_to type_membership_url(TypeMembership.last)
  end

  test "should show type_membership" do
    get type_membership_url(@type_membership)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_membership_url(@type_membership)
    assert_response :success
  end

  test "should update type_membership" do
    patch type_membership_url(@type_membership), params: { type_membership: { discount: @type_membership.discount, name: @type_membership.name } }
    assert_redirected_to type_membership_url(@type_membership)
  end

  test "should destroy type_membership" do
    assert_difference("TypeMembership.count", -1) do
      delete type_membership_url(@type_membership)
    end

    assert_redirected_to type_memberships_url
  end
end

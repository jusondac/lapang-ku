require "application_system_test_case"

class RentMembershipsTest < ApplicationSystemTestCase
  setup do
    @rent_membership = rent_memberships(:one)
  end

  test "visiting the index" do
    visit rent_memberships_url
    assert_selector "h1", text: "Rent memberships"
  end

  test "should create rent membership" do
    visit rent_memberships_url
    click_on "New rent membership"

    fill_in "Membership", with: @rent_membership.membership_id
    fill_in "Rent", with: @rent_membership.rent_id
    click_on "Create Rent membership"

    assert_text "Rent membership was successfully created"
    click_on "Back"
  end

  test "should update Rent membership" do
    visit rent_membership_url(@rent_membership)
    click_on "Edit this rent membership", match: :first

    fill_in "Membership", with: @rent_membership.membership_id
    fill_in "Rent", with: @rent_membership.rent_id
    click_on "Update Rent membership"

    assert_text "Rent membership was successfully updated"
    click_on "Back"
  end

  test "should destroy Rent membership" do
    visit rent_membership_url(@rent_membership)
    click_on "Destroy this rent membership", match: :first

    assert_text "Rent membership was successfully destroyed"
  end
end

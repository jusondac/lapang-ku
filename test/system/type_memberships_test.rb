require "application_system_test_case"

class TypeMembershipsTest < ApplicationSystemTestCase
  setup do
    @type_membership = type_memberships(:one)
  end

  test "visiting the index" do
    visit type_memberships_url
    assert_selector "h1", text: "Type memberships"
  end

  test "should create type membership" do
    visit type_memberships_url
    click_on "New type membership"

    fill_in "Discount", with: @type_membership.discount
    fill_in "Name", with: @type_membership.name
    click_on "Create Type membership"

    assert_text "Type membership was successfully created"
    click_on "Back"
  end

  test "should update Type membership" do
    visit type_membership_url(@type_membership)
    click_on "Edit this type membership", match: :first

    fill_in "Discount", with: @type_membership.discount
    fill_in "Name", with: @type_membership.name
    click_on "Update Type membership"

    assert_text "Type membership was successfully updated"
    click_on "Back"
  end

  test "should destroy Type membership" do
    visit type_membership_url(@type_membership)
    click_on "Destroy this type membership", match: :first

    assert_text "Type membership was successfully destroyed"
  end
end

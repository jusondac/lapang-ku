require "application_system_test_case"

class RentDetailsTest < ApplicationSystemTestCase
  setup do
    @rent_detail = rent_details(:one)
  end

  test "visiting the index" do
    visit rent_details_url
    assert_selector "h1", text: "Rent details"
  end

  test "should create rent detail" do
    visit rent_details_url
    click_on "New rent detail"

    fill_in "Hours", with: @rent_detail.hours
    fill_in "Membership", with: @rent_detail.membership_id
    click_on "Create Rent detail"

    assert_text "Rent detail was successfully created"
    click_on "Back"
  end

  test "should update Rent detail" do
    visit rent_detail_url(@rent_detail)
    click_on "Edit this rent detail", match: :first

    fill_in "Hours", with: @rent_detail.hours
    fill_in "Membership", with: @rent_detail.membership_id
    click_on "Update Rent detail"

    assert_text "Rent detail was successfully updated"
    click_on "Back"
  end

  test "should destroy Rent detail" do
    visit rent_detail_url(@rent_detail)
    click_on "Destroy this rent detail", match: :first

    assert_text "Rent detail was successfully destroyed"
  end
end

require "application_system_test_case"

class BorrowersTest < ApplicationSystemTestCase
  setup do
    @borrower = borrowers(:one)
  end

  test "visiting the index" do
    visit borrowers_url
    assert_selector "h1", text: "Borrowers"
  end

  test "creating a Borrower" do
    visit borrowers_url
    click_on "New Borrower"

    fill_in "Able To Borrow", with: @borrower.able_to_borrow
    fill_in "Birth Date", with: @borrower.birth_date
    fill_in "City", with: @borrower.city
    fill_in "First Name", with: @borrower.first_name
    fill_in "Last Name", with: @borrower.last_name
    fill_in "User", with: @borrower.user_id
    click_on "Create Borrower"

    assert_text "Borrower was successfully created"
    click_on "Back"
  end

  test "updating a Borrower" do
    visit borrowers_url
    click_on "Edit", match: :first

    fill_in "Able To Borrow", with: @borrower.able_to_borrow
    fill_in "Birth Date", with: @borrower.birth_date
    fill_in "City", with: @borrower.city
    fill_in "First Name", with: @borrower.first_name
    fill_in "Last Name", with: @borrower.last_name
    fill_in "User", with: @borrower.user_id
    click_on "Update Borrower"

    assert_text "Borrower was successfully updated"
    click_on "Back"
  end

  test "destroying a Borrower" do
    visit borrowers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Borrower was successfully destroyed"
  end
end

require "application_system_test_case"

class ReimbursementClaimsTest < ApplicationSystemTestCase
  setup do
    @reimbursement_claim = reimbursement_claims(:one)
  end

  test "visiting the index" do
    visit reimbursement_claims_url
    assert_selector "h1", text: "Reimbursement claims"
  end

  test "should create reimbursement claim" do
    visit reimbursement_claims_url
    click_on "New reimbursement claim"

    fill_in "Amount", with: @reimbursement_claim.amount
    fill_in "Date of expenditure", with: @reimbursement_claim.date_of_expenditure
    fill_in "Employee", with: @reimbursement_claim.employee_id
    fill_in "Purpose", with: @reimbursement_claim.purpose
    click_on "Create Reimbursement claim"

    assert_text "Reimbursement claim was successfully created"
    click_on "Back"
  end

  test "should update Reimbursement claim" do
    visit reimbursement_claim_url(@reimbursement_claim)
    click_on "Edit this reimbursement claim", match: :first

    fill_in "Amount", with: @reimbursement_claim.amount
    fill_in "Date of expenditure", with: @reimbursement_claim.date_of_expenditure.to_s
    fill_in "Employee", with: @reimbursement_claim.employee_id
    fill_in "Purpose", with: @reimbursement_claim.purpose
    click_on "Update Reimbursement claim"

    assert_text "Reimbursement claim was successfully updated"
    click_on "Back"
  end

  test "should destroy Reimbursement claim" do
    visit reimbursement_claim_url(@reimbursement_claim)
    click_on "Destroy this reimbursement claim", match: :first

    assert_text "Reimbursement claim was successfully destroyed"
  end
end

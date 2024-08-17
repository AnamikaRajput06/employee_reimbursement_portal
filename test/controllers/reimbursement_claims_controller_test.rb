require "test_helper"

class ReimbursementClaimsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reimbursement_claim = reimbursement_claims(:one)
  end

  test "should get index" do
    get reimbursement_claims_url
    assert_response :success
  end

  test "should get new" do
    get new_reimbursement_claim_url
    assert_response :success
  end

  test "should create reimbursement_claim" do
    assert_difference("ReimbursementClaim.count") do
      post reimbursement_claims_url, params: { reimbursement_claim: { amount: @reimbursement_claim.amount, date_of_expenditure: @reimbursement_claim.date_of_expenditure, employee_id: @reimbursement_claim.employee_id, purpose: @reimbursement_claim.purpose } }
    end

    assert_redirected_to reimbursement_claim_url(ReimbursementClaim.last)
  end

  test "should show reimbursement_claim" do
    get reimbursement_claim_url(@reimbursement_claim)
    assert_response :success
  end

  test "should get edit" do
    get edit_reimbursement_claim_url(@reimbursement_claim)
    assert_response :success
  end

  test "should update reimbursement_claim" do
    patch reimbursement_claim_url(@reimbursement_claim), params: { reimbursement_claim: { amount: @reimbursement_claim.amount, date_of_expenditure: @reimbursement_claim.date_of_expenditure, employee_id: @reimbursement_claim.employee_id, purpose: @reimbursement_claim.purpose } }
    assert_redirected_to reimbursement_claim_url(@reimbursement_claim)
  end

  test "should destroy reimbursement_claim" do
    assert_difference("ReimbursementClaim.count", -1) do
      delete reimbursement_claim_url(@reimbursement_claim)
    end

    assert_redirected_to reimbursement_claims_url
  end
end

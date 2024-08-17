class ReimbursementClaimsController < ApplicationController
  before_action :require_login
  before_action :set_employee
  before_action :set_reimbursement_claim, only: %i[ destroy ]

  # GET /reimbursement_claims or /reimbursement_claims.json
  def index
    @reimbursement_claims = @employee.reimbursement_claims
  end

  # GET /reimbursement_claims/new
  def new
    @reimbursement_claim = @employee.reimbursement_claims.new
  end

  # POST /reimbursement_claims or /reimbursement_claims.json
  def create
    @reimbursement_claim = @employee.reimbursement_claims.new(reimbursement_claim_params)

    respond_to do |format|
      if @reimbursement_claim.save
        format.html { redirect_to employee_reimbursement_claims_url(@employee), notice: "Reimbursement claim was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reimbursement_claims/1 or /reimbursement_claims/1.json
  def destroy
    @reimbursement_claim.destroy!

    respond_to do |format|
      format.html { redirect_to employee_reimbursement_claims_url(@employee), notice: "Reimbursement claim was successfully destroyed." }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reimbursement_claim
      @reimbursement_claim = ReimbursementClaim.find(params[:id])
    end

    def set_employee
      @employee = Employee.find(params[:employee_id])
    end

    # Only allow a list of trusted parameters through.
    def reimbursement_claim_params
      params.require(:reimbursement_claim).permit(:purpose, :amount, :date_of_expenditure, :employee_id)
    end
end

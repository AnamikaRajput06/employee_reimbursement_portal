class ReimbursementClaim < ApplicationRecord
  belongs_to :employee
  validates :purpose, :amount, :date_of_expenditure, presence: true
end

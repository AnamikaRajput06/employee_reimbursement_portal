class Employee < ApplicationRecord
  belongs_to :company
  has_many :reimbursement_claims, dependent: :destroy
  delegate :name, to: :company, prefix: true

  validates :first_name, :last_name, :email, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end

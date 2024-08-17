class CreateReimbursementClaims < ActiveRecord::Migration[7.2]
  def change
    create_table :reimbursement_claims do |t|
      t.text :purpose, null: false
      t.float :amount, null: false
      t.datetime :date_of_expenditure, null: false
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end

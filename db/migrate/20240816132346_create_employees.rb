class CreateEmployees < ActiveRecord::Migration[7.2]
  def change
    create_table :employees do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :designation
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end

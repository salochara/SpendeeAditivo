class CreateDays < ActiveRecord::Migration[6.0]
  def change
    create_table :days do |t|
      t.float :cash
      t.float :debit_card
      t.float :credit_card
      t.integer :new_affiliates
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

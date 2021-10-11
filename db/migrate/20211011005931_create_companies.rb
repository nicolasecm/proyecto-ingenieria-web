class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :adress
      t.references :category, null: false, foreign_key: true
      t.references :payment_method, null: false, foreign_key: true
      t.references :owner_company, null: false, foreign_key: true
      t.integer :phone
      t.string :schedule
      t.string :email
      t.boolean :status, default: true

      t.timestamps
    end
  end
end

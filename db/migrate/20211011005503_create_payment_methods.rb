class CreatePaymentMethods < ActiveRecord::Migration[6.1]
  def change
    create_table :payment_methods do |t|
      t.string :name
      t.boolean :status, default: true

      t.timestamps
    end
  end
end

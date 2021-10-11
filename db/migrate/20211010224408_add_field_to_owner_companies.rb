class AddFieldToOwnerCompanies < ActiveRecord::Migration[6.1]
  def change
    add_column :owner_companies, :first_name, :string
    add_column :owner_companies, :last_name, :string
    add_column :owner_companies, :username, :string
    add_column :owner_companies, :status, :boolean, default: true
  end
end

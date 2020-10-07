class AddNameToCompanies < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :name, :string
    add_index :companies, :name, unique: true
  end
end

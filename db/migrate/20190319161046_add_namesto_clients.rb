class AddNamestoClients < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :full_name, :string
    remove_column :clients, :insurance_id, :integer
    add_column :clients, :insurance, :string
  end
end

class AddNamestoRbts < ActiveRecord::Migration[5.1]
  def change
    add_column :rbts, :full_name, :string
  end
end

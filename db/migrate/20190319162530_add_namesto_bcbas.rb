class AddNamestoBcbas < ActiveRecord::Migration[5.1]
  def change
    add_column :bcbas, :full_name, :string
  end
end

class CreateRbts < ActiveRecord::Migration[5.1]
  def change
    create_table :rbts do |t|
      t.integer :bcba_id
      t.string :service_location
      t.string :address

      t.timestamps
    end
  end
end

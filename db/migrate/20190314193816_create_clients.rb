class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :address
      t.string :age_band
      t.string :functioning_status
      t.string :service_location
      t.integer :insurance_id

      t.timestamps
    end
  end
end

class CreateClientAvailabilities < ActiveRecord::Migration[5.1]
  def change
    create_table :client_availabilities do |t|
      t.integer :client_id
      t.integer :slot_id

      t.timestamps
    end
  end
end

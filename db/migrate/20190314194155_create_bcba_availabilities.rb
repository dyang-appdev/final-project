class CreateBcbaAvailabilities < ActiveRecord::Migration[5.1]
  def change
    create_table :bcba_availabilities do |t|
      t.integer :bcba_id
      t.integer :slot_id

      t.timestamps
    end
  end
end

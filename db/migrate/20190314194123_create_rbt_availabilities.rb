class CreateRbtAvailabilities < ActiveRecord::Migration[5.1]
  def change
    create_table :rbt_availabilities do |t|
      t.integer :rbt_id
      t.integer :slot_id

      t.timestamps
    end
  end
end

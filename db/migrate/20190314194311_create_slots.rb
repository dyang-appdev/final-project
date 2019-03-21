class CreateSlots < ActiveRecord::Migration[5.1]
  def change
    create_table :slots do |t|
      t.datetime :slot_start
      t.datetime :slot_end
      t.integer :week_id

      t.timestamps
    end
  end
end

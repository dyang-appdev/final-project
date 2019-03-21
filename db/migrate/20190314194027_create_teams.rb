class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.integer :client_id
      t.integer :bcba_id
      t.integer :rbt_id

      t.timestamps
    end
  end
end

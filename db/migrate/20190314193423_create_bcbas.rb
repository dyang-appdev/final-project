class CreateBcbas < ActiveRecord::Migration[5.1]
  def change
    create_table :bcbas do |t|
      t.string :address

      t.timestamps
    end
  end
end

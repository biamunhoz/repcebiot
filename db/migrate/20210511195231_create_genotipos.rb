class CreateGenotipos < ActiveRecord::Migration[5.2]
  def change
    create_table :genotipos do |t|
      t.string :nome

      t.timestamps
    end
  end
end

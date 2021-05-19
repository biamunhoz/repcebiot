class CreateFenotipos < ActiveRecord::Migration[5.2]
  def change
    create_table :fenotipos do |t|
      t.string :nome

      t.timestamps
    end
  end
end

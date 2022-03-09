class CreatePerfils < ActiveRecord::Migration[5.2]
  def change
    create_table :perfils do |t|
      t.string :tipo

      t.timestamps null: false
    end
  end
end

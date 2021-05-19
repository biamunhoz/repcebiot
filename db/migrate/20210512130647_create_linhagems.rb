class CreateLinhagems < ActiveRecord::Migration[5.2]
  def change
    create_table :linhagems do |t|
      t.string :nome

      t.timestamps
    end
  end
end

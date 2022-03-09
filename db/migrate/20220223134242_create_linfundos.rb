class CreateLinfundos < ActiveRecord::Migration[5.2]
  def change
    create_table :linfundos do |t|
      t.references :linhagem, foreign_key: true
      t.references :fundo, foreign_key: true
      t.timestamps
    end
  end
end

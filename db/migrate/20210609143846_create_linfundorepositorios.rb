class CreateLinfundorepositorios < ActiveRecord::Migration[5.2]
  def change
    create_table :linfundorepositorios do |t|
      t.references :repositorio, foreign_key: true
      t.references :linhagem, foreign_key: true
      t.references :fundo, foreign_key: true

      t.timestamps
    end
  end
end

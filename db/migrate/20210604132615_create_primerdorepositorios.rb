class CreatePrimerdorepositorios < ActiveRecord::Migration[5.2]
  def change
    create_table :primerdorepositorios do |t|
      t.references :repositorio, foreign_key: true
      t.references :primer, foreign_key: true

      t.timestamps
    end
  end
end

class CreateBioterios < ActiveRecord::Migration[5.2]
  def change
    create_table :bioterios do |t|
      t.string :local
      t.string :unidade
      t.string :idcuica
      t.references :origem, foreign_key: true

      t.timestamps
    end
  end
end

class CreateRepositorios < ActiveRecord::Migration[5.2]
  def change
    create_table :repositorios do |t|
      t.integer :anoiniciocolonia
      t.string :metodoacasalamento
      t.string :linkrefconstr
      t.string :nivelseguranca
      t.string :cqb
      t.references :genotipo, foreign_key: true
      t.references :bioterio, foreign_key: true
      t.references :origem, foreign_key: true
      t.references :fenotipo, foreign_key: true
      t.references :genealvo, foreign_key: true

      t.timestamps
    end
  end
end

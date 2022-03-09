class AddColumnsFromLinhagem < ActiveRecord::Migration[5.2]
  def change
    change_table :linhagems do |t|
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

    end


  end
end

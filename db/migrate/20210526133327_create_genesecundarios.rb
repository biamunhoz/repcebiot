class CreateGenesecundarios < ActiveRecord::Migration[5.2]
  def change
    create_table :genesecundarios do |t|
      t.references :genealvo, foreign_key: true
      t.references :geneassociado, foreign_key: { to_table: :genealvos }
      t.timestamps
    end
  end
end

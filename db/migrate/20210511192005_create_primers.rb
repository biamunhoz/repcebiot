class CreatePrimers < ActiveRecord::Migration[5.2]
  def change
    create_table :primers do |t|
      t.string :descricao
      t.string :protocolopcr
      t.string :geldeacarose

      t.timestamps
    end
  end
end

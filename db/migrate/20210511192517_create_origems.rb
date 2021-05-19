class CreateOrigems < ActiveRecord::Migration[5.2]
  def change
    create_table :origems do |t|
      t.string :instituicao
      t.string :sigla
      t.string :endereco
      t.string :observacao

      t.timestamps
    end
  end
end

class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.string :acao
      t.string :tela
      t.references :usuario, foreign_key: true

      t.timestamps
    end
  end
end

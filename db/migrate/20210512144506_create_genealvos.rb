class CreateGenealvos < ActiveRecord::Migration[5.2]
  def change
    create_table :genealvos do |t|
      t.string :nomeoficial
      t.string :simbolo
      t.string :sitereferencia

      t.timestamps
    end
  end
end

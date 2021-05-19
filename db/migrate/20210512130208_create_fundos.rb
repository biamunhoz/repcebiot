class CreateFundos < ActiveRecord::Migration[5.2]
  def change
    create_table :fundos do |t|
      t.string :nome

      t.timestamps
    end
  end
end

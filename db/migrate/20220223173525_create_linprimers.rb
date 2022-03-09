class CreateLinprimers < ActiveRecord::Migration[5.2]
  def change
    create_table :linprimers do |t|
      t.references :linhagem, foreign_key: true
      t.references :primer, foreign_key: true
      t.timestamps
    end
  end
end

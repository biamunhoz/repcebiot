class CreatePermitidos < ActiveRecord::Migration[5.2]
  def change
    create_table :permitidos do |t|
      t.references :usuario, index:true, foreign_key:true
      t.references :perfil, index:true, foreign_key:true

      t.timestamps null: false
    end
  end
end

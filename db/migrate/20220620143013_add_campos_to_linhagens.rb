class AddCamposToLinhagens < ActiveRecord::Migration[5.2]
  def change
    add_column :linhagems, :fenotipo, :text
    add_column :linhagems, :especie, :string
  end
end

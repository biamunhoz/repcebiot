class AddDesabilitaToLinhagens < ActiveRecord::Migration[5.2]
  def change
    add_column :linhagems, :habilitado, :boolean, :default => true
  end
end

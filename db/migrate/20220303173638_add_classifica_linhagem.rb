class AddClassificaLinhagem < ActiveRecord::Migration[5.2]
  def change
    add_column :linhagems, :classificacao, :string
  end
end

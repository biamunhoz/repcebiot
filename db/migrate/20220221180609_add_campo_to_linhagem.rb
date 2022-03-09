class AddCampoToLinhagem < ActiveRecord::Migration[5.2]
  def change
    add_column :linhagems, :nivelsanitario, :string
    add_column :linhagems, :mta, :boolean
  end
end

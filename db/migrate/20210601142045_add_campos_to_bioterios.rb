class AddCamposToBioterios < ActiveRecord::Migration[5.2]
  def change
    add_column :bioterios, :nivelsanitario, :string
    add_column :bioterios, :mta, :boolean
    add_column :bioterios, :responsavel, :string
    add_column :bioterios, :telcontato, :string
    add_column :bioterios, :emailcontato, :string
  end
end

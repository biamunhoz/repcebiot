class AddStatusToLinhagem < ActiveRecord::Migration[5.2]
  def change
    add_column :linhagems, :status, :string
  end
end

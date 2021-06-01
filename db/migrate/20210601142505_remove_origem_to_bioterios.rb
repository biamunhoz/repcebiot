class RemoveOrigemToBioterios < ActiveRecord::Migration[5.2]
  def change
    remove_column :bioterios, :origem_id
  end
end
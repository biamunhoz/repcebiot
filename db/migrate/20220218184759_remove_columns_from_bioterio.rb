class RemoveColumnsFromBioterio < ActiveRecord::Migration[5.2]
  def change
    remove_column :bioterios, :nivelsanitario
    remove_column :bioterios, :mta

  end
end

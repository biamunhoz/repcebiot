class AddUserRefToBioterios < ActiveRecord::Migration[5.2]
  def change
    add_reference :bioterios, :usuario, foreign_key: true
  end
end

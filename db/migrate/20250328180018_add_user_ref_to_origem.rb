class AddUserRefToOrigem < ActiveRecord::Migration[5.2]
  def change
    add_reference :origems, :usuario, foreign_key: true
  end
end

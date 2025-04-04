class AddUserRefToPrimer < ActiveRecord::Migration[5.2]
  def change
    add_reference :primers, :usuario, foreign_key: true
  end
end

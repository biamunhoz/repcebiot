class AddUserRefToGenealvo < ActiveRecord::Migration[5.2]
  def change
    add_reference :genealvos, :usuario, foreign_key: true
  end
end

class AddUserRefToLinhagems < ActiveRecord::Migration[5.2]
  def change
    add_reference :linhagems, :usuario, foreign_key: true
  end
end

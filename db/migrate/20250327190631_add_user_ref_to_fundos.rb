class AddUserRefToFundos < ActiveRecord::Migration[5.2]
  def change
    add_reference :fundos, :usuario, foreign_key: true
  end
end

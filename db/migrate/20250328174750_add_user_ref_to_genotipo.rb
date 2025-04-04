class AddUserRefToGenotipo < ActiveRecord::Migration[5.2]
  def change
    add_reference :genotipos, :usuario, foreign_key: true
  end
end

class RemoveLastnameFromPlayers < ActiveRecord::Migration
  def change
    remove_column :players, :lastname, :string
  end
end

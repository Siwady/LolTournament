class RemoveJoinDateFromPlayers < ActiveRecord::Migration
  def change
    remove_column :players, :join_date, :datetime
  end
end

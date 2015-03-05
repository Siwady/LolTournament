class RemovePointsFromTeams < ActiveRecord::Migration
  def change
    remove_column :teams, :points, :integer
  end
end

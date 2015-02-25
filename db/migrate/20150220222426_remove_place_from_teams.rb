class RemovePlaceFromTeams < ActiveRecord::Migration
  def change
    remove_column :teams, :place, :string
  end
end

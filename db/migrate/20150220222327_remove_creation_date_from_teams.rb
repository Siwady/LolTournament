class RemoveCreationDateFromTeams < ActiveRecord::Migration
  def change
    remove_column :teams, :creation_date, :datetime
  end
end

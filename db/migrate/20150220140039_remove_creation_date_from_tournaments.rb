class RemoveCreationDateFromTournaments < ActiveRecord::Migration
  def change
    remove_column :tournaments, :creation_date, :datetime
  end
end

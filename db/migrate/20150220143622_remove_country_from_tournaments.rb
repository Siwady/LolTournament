class RemoveCountryFromTournaments < ActiveRecord::Migration
  def change
    remove_column :tournaments, :country, :string
  end
end

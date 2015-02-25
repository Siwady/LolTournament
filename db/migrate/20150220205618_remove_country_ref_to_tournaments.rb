class RemoveCountryRefToTournaments < ActiveRecord::Migration
  def change
    remove_reference :tournaments, :country, index: true
  end
end

class AddCountryRefToTournaments < ActiveRecord::Migration
  def change
    add_reference :tournaments, :country, index: true
  end
end

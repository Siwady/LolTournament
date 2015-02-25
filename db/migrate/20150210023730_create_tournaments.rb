class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name
      t.datetime :creation_date
      t.string :country
      t.integer :team_limits
      t.string :prize

      t.timestamps
    end
  end
end

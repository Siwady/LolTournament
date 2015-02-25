class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :victories
      t.integer :losses
      t.datetime :creation_date
      t.integer :points
      t.string :place

      t.references :tournaments, index: true

      t.timestamps
    end
  end
end

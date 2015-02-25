class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :lastname
      t.datetime :join_date
      t.string :email
      t.string :nickname

      t.references :teams, index: true

      t.timestamps
    end
  end
end

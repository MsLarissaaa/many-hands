class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string  :team_name, null: false
      t.string  :description
      t.string  :location
      t.string  :agreements

      t.timestamps  null: false
    end
  end
end

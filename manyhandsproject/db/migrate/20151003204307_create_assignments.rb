class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer  :user_id
      t.integer  :team_id
      t.integer  :task_id
      t.date  :completion_date

      t.timestamps  null: false
    end
  end
end

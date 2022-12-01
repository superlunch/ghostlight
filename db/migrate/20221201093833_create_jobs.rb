class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.integer :team_id
      t.timestamps
    end
  end
end

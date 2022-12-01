class CreateDailyCalls < ActiveRecord::Migration[7.0]
  def change
    create_table :daily_calls do |t|
      t.text :call_times
      t.text :working_on
      t.references :called, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end

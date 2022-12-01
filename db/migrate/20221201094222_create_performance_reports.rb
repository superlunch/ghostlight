class CreatePerformanceReports < ActiveRecord::Migration[7.0]
  def change
    create_table :performance_reports do |t|
      t.text :call_times
      t.time :scheduled_intermission
      t.time :actual_intermission
      t.time :runtime
      t.integer :audience_count
      t.timestamps
    end
  end
end

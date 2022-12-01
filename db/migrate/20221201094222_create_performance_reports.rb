class CreatePerformanceReports < ActiveRecord::Migration[7.0]
  def change
    create_table :performance_reports do |t|

      t.timestamps
    end
  end
end

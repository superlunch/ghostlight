class CreateRehearsalReports < ActiveRecord::Migration[7.0]
  def change
    create_table :rehearsal_reports do |t|

      t.timestamps
    end
  end
end

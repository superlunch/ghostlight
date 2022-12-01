class CreateRehearsalReports < ActiveRecord::Migration[7.0]
  def change
    create_table :rehearsal_reports do |t|
      t.time :scheduled_breaks
      t.time :actual_breaks
      t.text :accomplishments
      t.timestamps
    end
  end
end

class CreateReportFields < ActiveRecord::Migration[7.0]
  def change
    create_table :report_fields do |t|

      t.timestamps
    end
  end
end

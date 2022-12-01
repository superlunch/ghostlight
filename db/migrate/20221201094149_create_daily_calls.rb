class CreateDailyCalls < ActiveRecord::Migration[7.0]
  def change
    create_table :daily_calls do |t|

      t.timestamps
    end
  end
end

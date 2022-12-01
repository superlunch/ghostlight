class CreateReportFields < ActiveRecord::Migration[7.0]
  def change
    create_table :report_fields do |t|
      t.date :date
      t.string :location
      t.time :scheduled_start
      t.time :actual_start
      t.time :scheduled_end
      t.time :actual_end
      t.references :present, foreign_key: { to_table: :users }
      t.references :late, foreign_key: { to_table: :users }
      t.references :absent, foreign_key: { to_table: :users }
      t.text :incidents
      t.text :general_notes
      t.text :set_notes
      t.text :props_notes
      t.text :lx_notes
      t.text :sound_notes
      t.text :projection_notes
      t.text :costume_notes
      t.text :hair_makeup_notes
      t.text :foh_notes
      t.text :stage_mgmt_notes
      t.text :prod_mgmt_notes
      t.date :next_date
      t.string :next_location
      t.time :next_scheduled_start
      t.time :next_scheduled_end
      t.integer :production_id
      t.actable
      t.timestamps
    end
  end
end

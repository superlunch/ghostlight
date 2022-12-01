class CreateProductionMtgReports < ActiveRecord::Migration[7.0]
  def change
    create_table :production_mtg_reports do |t|
      t.text :accomplishments
      t.timestamps
    end
  end
end

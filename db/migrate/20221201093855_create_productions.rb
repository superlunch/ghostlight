class CreateProductions < ActiveRecord::Migration[7.0]
  def change
    create_table :productions do |t|
      t.string :prod_title
      t.timestamps
    end
  end
end

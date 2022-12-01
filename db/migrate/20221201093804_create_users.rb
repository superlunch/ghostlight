class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email 
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.date :dob
      t.string :emergency_name 
      t.string :emergency_phone 
      t.string :emergency_relationship
      t.text :medical_info 
      t.text :contact_notes 
      t.integer :job_id 
      t.integer :production_id 
      t.boolean :is_admin, default: false
      t.timestamps
    end
  end
end

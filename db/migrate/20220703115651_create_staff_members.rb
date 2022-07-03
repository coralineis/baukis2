class CreateStaffMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :staff_members do |t|
      t.string :email, null: false
      t.string :family_name, null: false
      t.string :given_name, null: false
      t.string :family_name_kana, null: false
      t.string :given_name_kana, null: false
      t.string :hashed_password
      t.date :start_date, null: false
      t.date :end_date
      t.boolean :suspended, null: false, default: false

      t.timestamps
    end
    
    add_index :staff_members, "LOWER(email)", unique: true
    add_index :staff_members, [ :family_name_kana, :given_name_kana]
  end
end

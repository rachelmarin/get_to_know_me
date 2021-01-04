class CreateSignProfile < ActiveRecord::Migration
    def change
      create_table :signs do |t|
        t.integer :user_id
        t.string :name
        t.date :date_of_birth
        t.string :z_s
        t.string :c_z_s
        t.string :birthstone

        
    end
  end
end
class CreateBirthstones < ActiveRecord::Migration
    def change
      create_table :birthstones do |t|
        t.string :bithstone
        t.string :birth_month
  
        
      end
    end
  end
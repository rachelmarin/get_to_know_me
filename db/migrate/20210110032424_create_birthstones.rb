class CreateBirthstones < ActiveRecord::Migration
  def change
    create_table :birthstones do |t|
      t.string :month
      t.string :stone
      t.string :meaning
      t.integer :sign_id
     

      
    end
  end
end

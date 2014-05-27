class CreatePfrWebs < ActiveRecord::Migration
  def change
    create_table :pfr_webs do |t|
      t.integer :snils
      t.string :lname
      t.string :fname
      t.string :patr
      t.boolean :sex
      
      t.timestamps
    end
  end
end

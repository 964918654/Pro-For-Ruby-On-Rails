class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.string :idcard
      t.string :pic
      t.references :pro
      
      t.timestamps null: false
    end
  end
end

class CreatePros < ActiveRecord::Migration
  def change
    create_table :pros do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

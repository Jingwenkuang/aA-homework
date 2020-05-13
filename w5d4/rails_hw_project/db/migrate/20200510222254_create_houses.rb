class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.string :address, null:false
    end
    add_index :houses, :address, unique: true 
  end
end

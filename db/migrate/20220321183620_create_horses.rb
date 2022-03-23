class CreateHorses < ActiveRecord::Migration[7.0]
  def change
    create_table :horses do |t|
      t.string :horse_name
      t.string :brand_number
      t.boolean :availability
      
      t.timestamps
    end
  end
end

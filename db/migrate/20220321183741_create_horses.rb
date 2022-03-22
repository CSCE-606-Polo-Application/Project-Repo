class CreateHorses < ActiveRecord::Migration[7.0]
  def change
    create_table :horses do |t|
      t.string :HorseName
      t.string :HorseBrand
      t.boolean :HorseAvailability

      t.timestamps
    end
  end
end

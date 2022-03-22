class AddHorseToRidingTimes < ActiveRecord::Migration[7.0]
  def change
    add_reference :riding_times, :horse, null: false, foreign_key: true
  end
end

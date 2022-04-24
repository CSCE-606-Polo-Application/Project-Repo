class CreateRidingTimes < ActiveRecord::Migration[7.0]
  def change
    create_table :riding_times do |t|
      t.timestamps
    end
  end
end

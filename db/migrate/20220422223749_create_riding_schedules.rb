class CreateRidingSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :riding_schedules do |t|
      t.datetime :riding_datetime

      t.timestamps
    end
  end
end

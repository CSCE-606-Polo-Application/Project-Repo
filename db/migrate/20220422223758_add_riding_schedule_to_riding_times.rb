class AddRidingScheduleToRidingTimes < ActiveRecord::Migration[7.0]
  def change
    add_reference :riding_times, :riding_schedule, null: false, foreign_key: true
  end
end

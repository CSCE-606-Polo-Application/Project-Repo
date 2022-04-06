class CreateRidingPreferences < ActiveRecord::Migration[7.0]
  def change
    create_table :riding_preferences do |t|

      t.timestamps
    end
  end
end

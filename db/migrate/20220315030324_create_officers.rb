class CreateOfficers < ActiveRecord::Migration[7.0]
  def change
    create_table :officers do |t|
      t.string :position

      t.timestamps
    end
  end
end
class CreateOfficers < ActiveRecord::Migration[7.0]
  def change
    create_table :officers do |t|
      t.string :name
      t.string :position
      t.string :telephone
      t.string :email

      t.timestamps
    end
  end
end

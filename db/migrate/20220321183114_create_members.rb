class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :uin
      t.string :std_first_name
      t.string :std_last_name
      t.string :telephone
      t.string :email
      t.text :riding_experience

      t.timestamps
    end
  end
end

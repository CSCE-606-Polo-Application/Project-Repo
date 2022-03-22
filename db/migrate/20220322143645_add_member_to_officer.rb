class AddMemberToOfficer < ActiveRecord::Migration[7.0]
  def change
    add_reference :officers, :member, null: false, foreign_key: true
  end
end

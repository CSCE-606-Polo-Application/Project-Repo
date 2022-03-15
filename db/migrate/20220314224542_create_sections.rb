class CreateSections < ActiveRecord::Migration[7.0]
  def change
    create_table :sections do |t|
      t.string :title
      t.string :URI

      t.timestamps
    end
  end
end

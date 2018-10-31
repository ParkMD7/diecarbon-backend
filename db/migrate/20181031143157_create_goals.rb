class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.string :title
      t.string :description
      t.string :category
      t.string :difficulty
      t.integer :footprint

      t.timestamps
    end
  end
end

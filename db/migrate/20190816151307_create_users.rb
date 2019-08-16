class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.integer :weight
      t.integer :weight_goal
      t.integer :height_inch
      t.string :sex

      t.timestamps
    end
  end
end

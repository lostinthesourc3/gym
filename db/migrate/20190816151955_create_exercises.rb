class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :type_of
      t.string :name
      t.string :youtube_link
      t.string :description
      t.boolean :barbell?
      t.integer :weight

      t.timestamps
    end
  end
end

class CreateRoutines < ActiveRecord::Migration[5.2]
  def change
    create_table :routines do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.references :exercise, foreign_key: true
      t.timestamps
    end
  end
end

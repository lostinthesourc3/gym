class CreateGroupClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :group_classes do |t|
      t.string :name
      t.string :description
      t.string :instructor
      t.string :name
      t.datetime :sched_time

      t.timestamps
    end
  end
end

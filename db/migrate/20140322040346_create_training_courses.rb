class CreateTrainingCourses < ActiveRecord::Migration
  def change
    create_table :training_courses do |t|
      t.string :title, null: false, default: ""
      t.datetime :start_from
      t.datetime :end_at
      t.string :destination, null: false, default: ""
      t.string :promoter, null: false, default: ""
 
      t.timestamps
    end
  end
end

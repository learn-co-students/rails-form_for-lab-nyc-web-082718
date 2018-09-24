class CreateSchoolClasses < ActiveRecord::Migration
  def change
    create_table :school_classes do |t|
      t.integer :student_id
      t.string  :title
      t.integer :room_number
    end
  end
end

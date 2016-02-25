class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :user_id
      t.float :percentage
      t.date :due_date
      

      t.timestamps null: false
    end
  end
end

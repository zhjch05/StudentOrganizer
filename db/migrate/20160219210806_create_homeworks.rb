class CreateHomeworks < ActiveRecord::Migration
  def change
    create_table :homeworks do |t|
      t.text :hw_name
      t.date :due_date
      t.integer :group_id
      t.text :status
      t.float :grade
      t.text :comments

      t.timestamps null: false
    end
  end
end

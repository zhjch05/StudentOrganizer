class CreateUserHomeworks < ActiveRecord::Migration
  def change
    create_table :user_homeworks do |t|
      t.integer :user_id
      t.integer :homework_id
      t.string :status
      t.string :grade
      t.string :comment

      t.timestamps null: false
    end
  end
end

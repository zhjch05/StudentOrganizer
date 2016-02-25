class CreateHomeworks < ActiveRecord::Migration
  def change
    create_table :homeworks do |t|
      t.string :name
      t.datetime :due_date
      t.integer :group_id

      t.timestamps null: false
    end
  end
end

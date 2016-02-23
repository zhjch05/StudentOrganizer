class CreateWorkOns < ActiveRecord::Migration
  def change
    create_table :work_ons do |t|
      t.integer :homework_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :name
      t.integer :user_id
      t.string :term
      t.datetime :estimated_time

      t.timestamps null: false
    end
  end
end

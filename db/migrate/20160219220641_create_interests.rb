class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.integer :user_id
      t.text :interest_name

      t.timestamps null: false
    end
  end
end

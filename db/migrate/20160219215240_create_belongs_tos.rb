class CreateBelongsTos < ActiveRecord::Migration
  def change
    create_table :belongs_tos do |t|
      t.integer :user_id
      t.integer :group_id

      t.timestamps null: false
    end
  end
end

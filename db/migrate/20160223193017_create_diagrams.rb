class CreateDiagrams < ActiveRecord::Migration
  def change
    create_table :diagrams do |t|
      t.date :date
      t.integer :percentage

      t.timestamps null: false
    end
  end
end

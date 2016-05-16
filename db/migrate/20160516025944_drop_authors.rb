class DropAuthors < ActiveRecord::Migration
  def change
    drop_table :authors do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

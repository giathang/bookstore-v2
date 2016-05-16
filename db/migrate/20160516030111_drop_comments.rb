class DropComments < ActiveRecord::Migration
  def change
    drop_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :book, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

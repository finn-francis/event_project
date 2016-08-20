class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id, foreign_key: true
      t.integer :event_id, foreign_key: true
      t.string :body

      t.timestamps null: false
    end
  end
end

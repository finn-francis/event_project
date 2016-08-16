class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.integer :invited_id, foreign_key: true
      t.integer :inviter_id, foreign_key: true
      t.integer :event_id, foreign_key: true
      t.boolean :accepted, foreign_key: true

      t.timestamps null: false
    end
  end
end

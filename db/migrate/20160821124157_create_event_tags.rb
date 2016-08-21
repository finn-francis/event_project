class CreateEventTags < ActiveRecord::Migration
  def change
    create_table :event_tags do |t|
      t.integer :tag_id
      t.integer :event_id

      t.timestamps null: false
    end
  end
end

class AddEventIdToAttendances < ActiveRecord::Migration
  def change
    add_column :attendances, :event_id, :integer, forign_key: true
  end
end

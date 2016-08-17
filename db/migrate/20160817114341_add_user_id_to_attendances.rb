class AddUserIdToAttendances < ActiveRecord::Migration
  def change
    add_column :attendances, :user_id, :integer, forign_key: true
  end
end

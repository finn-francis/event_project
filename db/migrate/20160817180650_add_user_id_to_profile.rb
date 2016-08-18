class AddUserIdToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :user_id, :integer, foreign_key: true
  end
end

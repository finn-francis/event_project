class ChangeAcceptedBackInInvites < ActiveRecord::Migration
  def change
    change_column :invites, :accepted, :boolean
  end
end

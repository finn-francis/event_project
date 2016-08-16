class ChangeAcceptedInInvites < ActiveRecord::Migration
  def change
    change_column :invites, :accepted, :boolean, :default => false
  end
end

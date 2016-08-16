class RemoveDefaultOnInvite < ActiveRecord::Migration
  def change
    change_column :invites, :accepted, :boolean, :default => nil
  end
end

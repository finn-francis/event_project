class AddOrganiserIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :organiser_id, :integer, foreign_key: :true
  end
end

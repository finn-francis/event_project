class AddImageUrlToEvents < ActiveRecord::Migration
  def change
    add_column :events, :image_url, :string, default: '/assets/default-event.jpg'
  end
end

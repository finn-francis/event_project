class AddImageUrlToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :image_url, :string, default: '/assets/default-user.png'
  end
end

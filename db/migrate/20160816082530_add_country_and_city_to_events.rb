class AddCountryAndCityToEvents < ActiveRecord::Migration
  def change
    add_column :events, :country, :string
    add_column :events, :city, :string
  end
end

class RemoveAddressColumnToStructures < ActiveRecord::Migration[5.1]
  def change
    remove_column :structures, :street
    remove_column :structures, :street_number
    remove_column :structures, :city
    remove_column :structures, :province
    remove_column :structures, :zipcode
    remove_column :structures, :country
    remove_column :structures, :latitude
    remove_column :structures, :longitude
  end
end

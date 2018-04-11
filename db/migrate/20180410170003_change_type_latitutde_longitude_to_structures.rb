class ChangeTypeLatitutdeLongitudeToStructures < ActiveRecord::Migration[5.1]
  def change
    change_column :structures, :latitude, :float
    change_column :structures, :longitude, :float
  end
end

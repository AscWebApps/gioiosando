class CreateStructures < ActiveRecord::Migration[5.1]
  def change
    create_table :structures do |t|
      t.string :name
      t.text :description
      t.string :street
      t.string :street_number
      t.string :city
      t.string :province
      t.string :zipcode
      t.string :country
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end

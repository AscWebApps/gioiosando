class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :street_number
      t.string :city
      t.string :zipcode
      t.string :province
      t.string :country
      t.float :latitude
      t.float :longitude
      t.references :addressable, polymorphic: true, index: true

      t.timestamps
    end
  end
end

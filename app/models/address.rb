class Address < ApplicationRecord
  validates :city, :province, :country, :street, :street_number, :zipcode, presence: true
  belongs_to :addressable, polymorphic: true 
  #after_validation :geocode  
  #geocoded_by :full_address

  #def full_address
  #  [street, street_number, zipcode, city, province, country].compact.join(' ')
  #end
end

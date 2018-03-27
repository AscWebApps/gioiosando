class Structure < ApplicationRecord
  after_validation :geocode  
  geocoded_by :full_address

  def full_address
    [street, street_number, zipcode, city, province, country].compact.join(' ')
  end

end

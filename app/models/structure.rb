class Structure < ApplicationRecord
  validates :name, :description, presence: true

  has_one :address, :as => :addressable, inverse_of: :addressable
  accepts_nested_attributes_for :address, allow_destroy: true
  has_one :seo_tag, :as => :seo_polymorphic, inverse_of: :seo_polymorphic
  accepts_nested_attributes_for :seo_tag, allow_destroy: true
 end

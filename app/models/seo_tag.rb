class SeoTag < ApplicationRecord
  validates :tag_title, :tag_description, presence: true
  belongs_to :seo_polymorphic, polymorphic: true 
end

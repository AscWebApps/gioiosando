class Post < ApplicationRecord
  validates :title, presence: {message: 'campo obbligatorio'}
  has_many :comments
end

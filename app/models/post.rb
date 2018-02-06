class Post < ApplicationRecord
  validates :title, presence: {message: 'campo obbligatorio'}
  has_many :comments
  belongs_to :user
end

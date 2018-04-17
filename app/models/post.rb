class Post < ApplicationRecord
  validates :title, presence: {message: 'campo obbligatorio'}
  has_many :comments
  belongs_to :user
  has_and_belongs_to_many :categories
  scope :published, -> {where(published: true)}
end

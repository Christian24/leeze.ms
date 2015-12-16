class Tour < ActiveRecord::Base
  has_many :tour_categories
  has_many :categories, through: :tour_categories
  validates :title, :teaser, :description, :url, presence: true
  validates :url, format: %r|\Ahttp(s?)://www.google.com/maps/|
  validates :categories, presence: true
end

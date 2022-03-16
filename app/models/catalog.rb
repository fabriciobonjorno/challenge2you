class Catalog < ApplicationRecord
  validates :platform, :title, :director, :cast, :country, presence: true
  validates :date_added, :rating, :duration, :listed_in, :description, presence: true
  validates :show_id, presence: true, uniqueness: { case_sensitive: false }
  validates :release_year, presence: true, numericality: { greater_than: 0 }
end

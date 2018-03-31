class Guide < ApplicationRecord

  # Relations

  has_many :paths
  has_many :points

  # Validators

  validates :name, presence: true, length: {minimum: 2, maximum: 20 }
  validates :country, presence: true, allow_nil: true
  validates :region, presence: true, allow_nil: true
  validates :city, presence: true, allow_nil: true
  validates :published_on, presence: true

end

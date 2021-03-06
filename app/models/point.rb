class Point < ApplicationRecord

  # References

  belongs_to :user, optional: true
  belongs_to :guide, optional: true
  has_many :path_order

  # Validators

  validates :name, presence: true, length: { maximum: 50 }
  validates :longitude, presence: true
  validates :latitude, presence: true
  # validates :created_by_user_id, presence: true
  validates :category, presence: true

  # Accessors

  # attr_accessor :latitude
  # attr_accessor :longitude

end

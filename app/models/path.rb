class Path < ApplicationRecord

  # Relations

  belongs_to :user, optional: true
  has_one :path_order, dependent: :destroy
  has_many :points, through: :path_order

  # Validators

  validates :name, presence: true, length: { maximum: 50 }

end

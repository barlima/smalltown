class PathOrder < ApplicationRecord

  # Relations
  belongs_to :path
  belongs_to :point

  # Validators

  validates :position, presence: true
  validates :path_id, presence: true
  validates :point_id, presence: true

end

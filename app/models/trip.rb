class Trip < ApplicationRecord

  # Relations

  belongs_to :user

  # Validators

  validates :user_id, presence: true
  validates :name, presence: true, length: {maximum: 24}

  # Dependencies

  default_scope -> { order(created_at: :desc) }

  def seconds
    end_date - start_date
  end

  def days
    (self.seconds / 3600 / 24).round(2).ceil
  end

  def hours
    (self.seconds / 3600 ).round(2).ceil
  end

  def minutes
    (self.seconds / 60 ).round(2).ceil
  end

end

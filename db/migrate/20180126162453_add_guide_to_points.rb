class AddGuideToPoints < ActiveRecord::Migration[5.1]
  def change
    add_reference :points, :guide, foreign_key: true
  end
end

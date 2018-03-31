class AddGuideToPaths < ActiveRecord::Migration[5.1]
  def change
    add_reference :paths, :guide, foreign_key: true
  end
end

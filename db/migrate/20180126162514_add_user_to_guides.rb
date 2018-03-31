class AddUserToGuides < ActiveRecord::Migration[5.1]
  def change
    add_reference :guides, :user, foreign_key: true
  end
end

class AddCreatorToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :creators, :boolean, default: false
  end
end

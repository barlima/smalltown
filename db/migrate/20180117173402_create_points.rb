class CreatePoints < ActiveRecord::Migration[5.1]
  def change
    create_table :points do |t|
      t.string :name
      t.string :longitude
      t.string :latitude
      t.string :category
      t.integer :rating
      t.float :avg_time_min
      t.float :avg_time_max
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

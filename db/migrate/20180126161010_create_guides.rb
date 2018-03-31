class CreateGuides < ActiveRecord::Migration[5.1]
  def change
    create_table :guides do |t|
      t.string :name
      t.string :country
      t.string :region
      t.string :city
      t.datetime :published_on

      t.timestamps
    end
  end
end

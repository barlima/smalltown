class CreatePathOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :path_orders do |t|
      t.integer :position
      t.references :path, foreign_key: true
      t.references :point, foreign_key: true

          t.timestamps
    end
  end
end

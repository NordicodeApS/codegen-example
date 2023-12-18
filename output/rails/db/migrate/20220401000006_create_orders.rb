class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.integer :showId
      t.integer :customerId

      t.timestamps
    end
  end
end
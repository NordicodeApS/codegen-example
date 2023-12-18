class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.integer :customerId
      t.string :show
      t.integer :tickets, array: true, default: []

      t.timestamps
    end
  end
end
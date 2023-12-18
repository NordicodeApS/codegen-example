class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.string :show
      t.integer :tickets
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
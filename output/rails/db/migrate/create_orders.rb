class CreateOrders < ActiveRecord::Migration[7.1]
    def change
        create_table :orders do |t|
            t.integer :id
            t.string :show
            t.references :customer, foreign_key: true
            t.integer :tickets

            t.timestamps
        end
    end
end
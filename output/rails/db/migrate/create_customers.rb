class CreateCustomers < ActiveRecord::Migration[7.1]
    def change
        create_table :customers do |t|
            t.integer :id
            t.string :name
            t.string :email
            t.string :createdDate

            t.timestamps
        end
    end
end
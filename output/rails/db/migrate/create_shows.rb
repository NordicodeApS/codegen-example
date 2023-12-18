class CreateShows < ActiveRecord::Migration[7.1]
    def change
        create_table :shows do |t|
            t.integer :id
            t.string :name
            t.text :description
            t.references :category, foreign_key: true
            t.string :date

            t.timestamps
        end
    end
end
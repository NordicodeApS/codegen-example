class CreateShows < ActiveRecord::Migration[7.1]
  def change
    create_table :shows do |t|
      t.string :name
      t.text :description
      t.integer :categoryId

      t.timestamps
    end
  end
end
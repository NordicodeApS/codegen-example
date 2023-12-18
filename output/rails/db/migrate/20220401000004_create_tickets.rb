class CreateTickets < ActiveRecord::Migration[7.1]
  def change
    create_table :tickets do |t|
      t.integer :showId
      t.integer :seat
      t.boolean :available

      t.timestamps
    end
  end
end
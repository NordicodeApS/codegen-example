class CreateTokens < ActiveRecord::Migration[7.1]
  def change
    create_table :tokens do |t|
      t.string :bearerToken
      t.string :expireDate

      t.timestamps
    end
  end
end
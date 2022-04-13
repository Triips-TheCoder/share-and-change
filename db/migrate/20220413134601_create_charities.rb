class CreateCharities < ActiveRecord::Migration[7.0]
  def change
    create_table :charities do |t|
      t.string :logo
      t.string :catchphrase
      t.text :description
      t.string :phone
      t.string :email
      t.text :website
      t.text :adress
      t.string :zipcode
      t.string :city
      t.string :country
      t.string :name

      t.timestamps
    end
  end
end

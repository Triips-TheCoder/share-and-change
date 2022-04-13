class CreateCapsules < ActiveRecord::Migration[7.0]
  def change
    create_table :capsules do |t|
      t.references :charity, null: false, foreign_key: true
      t.references :need, null: false, foreign_key: true
      t.text :video
      t.string :quote
      t.text :poster
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end

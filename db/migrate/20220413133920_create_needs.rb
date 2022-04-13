class CreateNeeds < ActiveRecord::Migration[7.0]
  def change
    create_table :needs do |t|
      t.string :name

      t.timestamps
    end
  end
end

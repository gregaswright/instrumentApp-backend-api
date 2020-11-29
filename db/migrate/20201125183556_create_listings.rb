class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :brand
      t.string :instrument_type
      t.string :history
      t.integer :weight
      t.integer :age
      t.boolean :used
      t.integer :price
      t.string :img
      t.belongs_to :user

      t.timestamps
    end
  end
end

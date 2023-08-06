class CreateApartments < ActiveRecord::Migration[7.0]
  def change
    create_table :apartments do |t|
      t.integer :square, null: false
      t.integer :price, null: false
      t.integer :price_meter
      t.string :description, null: false
      t.integer :option, default: 0
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

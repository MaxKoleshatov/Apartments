class CreateSaleApartments < ActiveRecord::Migration[7.0]
  def change
    create_table :sale_apartments do |t|
      t.string :square_apartment, null: false
      t.string :price_apartment, null: false
      t.string :price_per_square_meter_apartment, null: false
      t.string :description_sale
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateRentApartments < ActiveRecord::Migration[7.0]
  def change
    create_table :rent_apartments do |t|
      t.string :square_apartment, null: false
      t.string :price_mount_apartment, null: false
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateDailyApartments < ActiveRecord::Migration[7.0]
  def change
    create_table :daily_apartments do |t|
      t.string :square_apartment, null: false
      t.string :price_daily_apartment, null: false
      t.string :description_daily
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end    
  end
end

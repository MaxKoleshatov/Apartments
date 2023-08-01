# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user_1 = User.new({name: "Max", number: "123", email: "a@test.com", password: "123456"})
user_1.save

sale_apartments = SaleApartment.create!([
    {square_apartment: "100", price_apartment: "150000", price_per_square_meter_apartment: "400", description_sale: "sale1", user_id: user_1.id, created_at: (Time.now - 2.day)},
    {square_apartment: "200", price_apartment: "120000", price_per_square_meter_apartment: "600", description_sale: "sale2", user_id: user_1.id, created_at: (Time.now - 1.day)},
    {square_apartment: "300", price_apartment: "130000", price_per_square_meter_apartment: "700", description_sale: "sale3", user_id: user_1.id}
])

rent_apartments = RentApartment.create!([
    {square_apartment: "100", price_mount_apartment: "150000", description_rent: "rent1", user_id: user_1.id, created_at: (Time.now - 2.day)},
    {square_apartment: "200", price_mount_apartment: "120000", description_rent: "rent2", user_id: user_1.id, created_at: (Time.now - 1.day)},
    {square_apartment: "300", price_mount_apartment: "130000", description_rent: "rent3", user_id: user_1.id}
])

daily_apartments = DailyApartment.create!([
    {square_apartment: "100", price_daily_apartment: "150000", description_daily: "daily1", user_id: user_1.id, created_at: (Time.now - 2.day)},
    {square_apartment: "200", price_daily_apartment: "120000", description_daily: "daily2", user_id: user_1.id, created_at: (Time.now - 1.day)},
    {square_apartment: "300", price_daily_apartment: "130000", description_daily: "daily3", user_id: user_1.id}
])

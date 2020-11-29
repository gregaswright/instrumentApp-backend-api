# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

10.times do
    user = User.create!(
        username: Faker::Twitter.screen_name,
        password: "1234",
        email: Faker::Internet.email,
        wallet: rand(100..2000)
        )

    3.times do
        Listing.create!(
            brand: Faker::Lorem.word,
            instrument_type: Faker::Music.instrument,
            history: Faker::Lorem.paragraph(sentence_count: 2),
            weight: rand(20..100),
            age: rand(1..100),
            used: [true, false].sample,
            price: rand(100..2000),
            img: "https://jncdqugytx-flywheel.netdna-ssl.com/wp-content/uploads/2019/04/product-placeholder.gif",
            user: user
        )
    end
end
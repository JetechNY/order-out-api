User.destroy_all
Restaurant.destroy_all
MenuItem.destroy_all

#users
# sunjet = User.create(username: "SunJet", password: "123", email: "sunjet@sunjet.com")
20.times do
    User.create(
        username: Faker::Internet.username,
        password: "123",
        email: Faker::Internet.email,
        address: Faker::Address.street_address,
        name: Faker::Name.name,
        phone: Faker::PhoneNumber.phone_number
    )


#categories
# mcd = Restaurant.create(name: "McDonalds", user_id: sunjet.id)
# bk = Restaurant.create(name: "Burger King", user_id: sunjet.id)
# w = Restaurant.create(name: "Wendy's", user_id: sunjet.id)
# pops = Restaurant.create(name: "Popeye's", user_id: sunjet.id)

5.times do
    Restaurant.create(
        name: Faker::Restaurant.name,
        rating: Faker::Restaurant.description,
        categories: Faker::Restaurant.type,
        image_url:"https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.eatthis.com%2Fbiggest-myths-about-mcdonalds-foods%2F&psig=AOvVaw1xSWkKxNcXkqjxqN5l26og&ust=1607789740800000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCOjpt9Wpxu0CFQAAAAAdAAAAABAD"
    )
end

Restaurant.all.each do |rest|

    20.times do
        MenuItem.create(
            name: Faker::Food.dish,
            description:Faker::Food.description,
            img:"https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.newfoodmagazine.com%2Farticle%2F94705%2Fmcdonalds-joins-the-plant-revolution%2F&psig=AOvVaw0i2Usf4BtkaCah9FryZFl2&ust=1607789321517000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCIiT742oxu0CFQAAAAAdAAAAABAD",
            price: rand(1..100),
            restaurant: rest
        )
    end

end

2.times do
    Cart.create(
        note: "test",
        checkout: false,
        user_id: User.all.sample
    )

User.all.each do
    

Restaurant.all.each do
    CartItem.create(
        cart: Cart.all.sample,
        menuitem: MenuItem.all.sample
    )



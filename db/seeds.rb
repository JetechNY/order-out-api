User.destroy_all
Restaurant.destroy_all
MenuItem.destroy_all

#users
# sunjet = User.create(username: "SunJet", password: "123", email: "sunjet@sunjet.com")
5.times do
    User.create(
        username: Faker::Internet.username,
        password: "123",
        email: Faker::Internet.email,
        address: Faker::Address.street_address,
        name: Faker::Name.name,
        phone: Faker::PhoneNumber.phone_number
    )

end
#categories
# mcd = Restaurant.create(name: "McDonalds", user_id: sunjet.id)
# bk = Restaurant.create(name: "Burger King", user_id: sunjet.id)
# w = Restaurant.create(name: "Wendy's", user_id: sunjet.id)
# pops = Restaurant.create(name: "Popeye's", user_id: sunjet.id)

10.times do
    Restaurant.create(
        name: Faker::Restaurant.name,
        rating: Faker::Restaurant.description,
        categories: Faker::Restaurant.type,
        image_url:"https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.eatthis.com%2Fbiggest-myths-about-mcdonalds-foods%2F&psig=AOvVaw1xSWkKxNcXkqjxqN5l26og&ust=1607789740800000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCOjpt9Wpxu0CFQAAAAAdAAAAABAD"
    )
end

Restaurant.all.each do |rest|

    5.times do
        MenuItem.create(
            name: Faker::Food.dish,
            description:Faker::Food.description,
            img:"https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.newfoodmagazine.com%2Farticle%2F94705%2Fmcdonalds-joins-the-plant-revolution%2F&psig=AOvVaw0i2Usf4BtkaCah9FryZFl2&ust=1607789321517000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCIiT742oxu0CFQAAAAAdAAAAABAD",
            price: rand(1..100),
            restaurant: rest
        )
    end

end

10.times do
    Cart.create(
        note: "test",
        checkout: false,
        user: User.all.sample
    )
end

Cart.all.each do |cart|
    rest = Restaurant.all.sample
    items = rand(1..10)
        items.times do
            CartItem.create(cart: cart, menu_item: rest.menu_items.sample)
        end
end



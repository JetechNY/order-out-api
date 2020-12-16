User.destroy_all
Restaurant.destroy_all
MenuItem.destroy_all

#users
# sunjet = User.create(username: "SunJet", password: "123", email: "sunjet@sunjet.com")
# 2.times do
    User.create(
        username: Faker::Internet.username,
        password: "123",
        email: Faker::Internet.email,
        address: Faker::Address.street_address,
        name: Faker::Name.name,
        phone: Faker::PhoneNumber.phone_number
    )
# end

3.times do
    Restaurant.create(
        name: Faker::Restaurant.name,
        rating: rand(1..100),
        categories: Faker::Restaurant.type,
        image_url:"https://i1.wp.com/www.eatthis.com/wp-content/uploads/2018/12/the-golden-mcdonalds-arch.jpg?resize=640%2C360&ssl=1",
        display_phone: Faker::PhoneNumber.phone_number,
        location: Faker::Address.street_address,
        price: rand(1..100),
        description: Faker::Restaurant.description
    )
end

Restaurant.all.each do |rest|

    5.times do
        MenuItem.create(
            name: Faker::Food.dish,
            description: Faker::Food.description,
            img:"https://images2.minutemediacdn.com/image/upload/c_crop,h_1126,w_2000,x_0,y_181/f_auto,q_auto,w_1100/v1554932288/shape/mentalfloss/12531-istock-637790866.jpg",
            price: rand(1..100),
            restaurant: rest
        )
    end

end

Cart.create(
        note: "test",
        checkout: false,
        user: User.all.sample
    )


Cart.all.each do |cart|
    rest = Restaurant.all.sample
    items = rand(1..5)
        items.times do
            CartItem.create(cart: cart, menu_item: rest.menu_items.sample)
        end
end



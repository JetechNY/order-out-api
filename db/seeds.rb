User.destroy_all
Restaurant.destroy_all
MenuItem.destroy_all

User.create(
        username: "SunJet",
        password: "123",
        email: "sunjet@sunjet.com",
        address: Faker::Address.street_address,
        name: Faker::Name.name,
        phone: Faker::PhoneNumber.phone_number
    )


    Restaurant.create(
        name: "McDonalds",
        rating: rand(1..100),
        categories: "burger",
        image_url:"https://i1.wp.com/www.eatthis.com/wp-content/uploads/2018/12/the-golden-mcdonalds-arch.jpg?resize=640%2C360&ssl=1",
        display_phone: Faker::PhoneNumber.phone_number,
        location: Faker::Address.street_address,
        price: Faker::Number.decimal(l_digits: 2),
        description: Faker::Restaurant.description
    )

    Restaurant.create(
        name: "PizzaHut",
        rating: rand(1..100),
        categories: "pizza",
        image_url:"http://www.logopeople.com.au/blog/wp-content/uploads/2013/09/Pizza-hut-fast-food-logo.jpg",
        display_phone: Faker::PhoneNumber.phone_number,
        location: Faker::Address.street_address,
        price: Faker::Number.decimal(l_digits: 2),
        description: Faker::Restaurant.description
    )
    Restaurant.create(
        name: "Taco Bell",
        rating: rand(1..100),
        categories: "mexican",
        image_url:"http://www.logopeople.com.au/blog/wp-content/uploads/2013/09/Taco-bell-fast-food-logo.jpg",
        display_phone: Faker::PhoneNumber.phone_number,
        location: Faker::Address.street_address,
        price: Faker::Number.decimal(l_digits: 2),
        description: Faker::Restaurant.description
    )

Restaurant.all.each do |rest|

    8.times do
        MenuItem.create(
            name: Faker::Food.dish,
            description: Faker::Food.description,
            img:"https://images2.minutemediacdn.com/image/upload/c_crop,h_1126,w_2000,x_0,y_181/f_auto,q_auto,w_1100/v1554932288/shape/mentalfloss/12531-istock-637790866.jpg",
            price: Faker::Number.decimal(l_digits: 2),
            restaurant: rest
        )
    end

end

Cart.create(
        note: "tester note",
        checkout: false,
        user: User.all.sample
    )

        3.times do
            CartItem.create(cart: Cart.first, menu_item: Restaurant.first.menu_items.sample)
        end




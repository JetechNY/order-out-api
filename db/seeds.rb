Cart.destroy_all
User.destroy_all
Restaurant.destroy_all
MenuItem.destroy_all

    User.create(
        username: "SunJet",
        password: "123",
        email: "sunjet@sunjet.com",
        address: Faker::Address.street_address,
        name: Faker::Name.name,
        phone: Faker::PhoneNumber.phone_number,
    )

    Restaurant.create(
        name: "McDonalds",
        rating: rand(15..100),
        categories: "Fast Food Burgers",
        image_url:"http://www.logopeople.com.au/blog/wp-content/uploads/2013/09/mcdonalds-fast-food-logo.jpg",
        display_phone: Faker::PhoneNumber.phone_number,
        location: Faker::Address.street_address,
        price: "$$",
        description: "McDonald's Corporation is an American fast food company, founded in 1940 as a restaurant operated by Richard and Maurice McDonald, in San Bernardino, California, United States. They rechristened their business as a hamburger stand, and later turned the company into a franchise, with the Golden Arches logo being introduced in 1953 at a location in Phoenix, Arizona. In 1955, Ray Kroc, a businessman, joined the company as a franchise agent and proceeded to purchase the chain from the McDonald brothers. McDonald's had its previous headquarters in Oak Brook, Illinois, but moved its global headquarters to Chicago in June 2018."
    )

    Restaurant.create(
        name: "PizzaHut",
        rating: rand(15..100),
        categories: "Italian-American",
        image_url:"http://www.logopeople.com.au/blog/wp-content/uploads/2013/09/Pizza-hut-fast-food-logo.jpg",
        display_phone: Faker::PhoneNumber.phone_number,
        location: Faker::Address.street_address,
        price: "$$",
        description: "Pizza Hut is an American restaurant chain and international franchise founded in 1958 in Wichita, Kansas by Dan and Frank Carney. It provides Italian-American cuisine, including pizza, pasta, side dishes and desserts. It has 18,703 restaurants worldwide as of December 31, 2019, making it the world's largest pizza chain in terms of number of locations. It is a subsidiary of Yum! Brands, Inc., one of the world's largest restaurant companies."
    )
    Restaurant.create(
        name: "Taco Bell",
        rating: rand(15..100),
        categories: "Mexican Inspired",
        image_url:"http://www.logopeople.com.au/blog/wp-content/uploads/2013/09/Taco-bell-fast-food-logo.jpg",
        display_phone: Faker::PhoneNumber.phone_number,
        location: Faker::Address.street_address,
        price: "$",
        description: "Taco Bell is an American-based chain of fast food restaurants originating in Irvine, California in 1962, by founder Glen Bell. Taco Bell is a subsidiary of Yum! Brands, Inc. The restaurants serve a variety of Mexican-inspired foods, that include: tacos, burritos, quesadillas, nachos, novelty and specialty items, along with a variety of value menu items. As of 2018, Taco Bell serves over two billion customers each year, at 7,072 restaurants, more than 93 percent of which are owned and operated by independent franchisees and licensees."
    )

    Restaurant.create(
        name: "Panda Express",
        rating: rand(15..100),
        categories: "American Chinese Inspired",
        image_url:"https://d1yjjnpx0p53s8.cloudfront.net/styles/logo-original-577x577/s3/012016/untitled-1_333.png?itok=JyXaK8kF",
        display_phone: Faker::PhoneNumber.phone_number,
        location: Faker::Address.street_address,
        price: "$",
        description: "Panda Express is an American fast food restaurant chain that serves American Chinese cuisine. With over 2,200 locations, it is the largest Asian segment restaurant chain in the United States, where it was founded and is mainly located (in addition to other countries and territories in North America and Asia). Panda Express restaurants were traditionally located in shopping mall food courts, but the chain now operates units in many other environments and formats, including stand-alone restaurants, as well as universities, casinos, airports, military bases, amusement parks and other venues."
    )



# Restaurant.all.each do |rest|

#     8.times do
#         MenuItem.create(
#             name: Faker::Food.dish,
#             description: Faker::Food.description,
#             img:"https://images2.minutemediacdn.com/image/upload/c_crop,h_1126,w_2000,x_0,y_181/f_auto,q_auto,w_1100/v1554932288/shape/mentalfloss/12531-istock-637790866.jpg",
#             price: Faker::Number.decimal(l_digits: 2),
#             restaurant: rest
#         )
#     end

# end

MenuItem.create(
    name: "Big Mac",
    description: "Mouthwatering perfection starts with two 100% pure beef patties and Big Mac sauce sandwiched between a sesame seed bun. It’s topped off with pickles, crisp shredded lettuce, finely chopped onion and American cheese.",
    img:"https://www.mcdonalds.com/is/image/content/dam/usa/nfl/nutrition/items/hero/desktop/t-mcdonalds-Big-Mac.jpg?$Product_Desktop$",
    price: Faker::Number.between(from: 1.00, to: 15.00).round(2),
    restaurant_id: 1
)

MenuItem.create(
    name: "Quarter Pounder with Cheese",
    description: "Each Quarter Pounder® with Cheese burger features a ¼ lb. of 100% fresh beef that’s hot, deliciously juicy and cooked when you order. It’s seasoned with just a pinch of salt and pepper, sizzled on a flat iron grill, then topped with slivered onions, tangy pickles and two slices of melty American cheese on a sesame seed bun. Our QPC® contains no artificial flavors, preservatives or added colors from artificial sources.",
    img:"https://www.mcdonalds.com/is/image/content/dam/usa/nfl/nutrition/items/hero/desktop/t-mcdonalds-Quarter-Pounder-with-Cheese.jpg?$Product_Desktop$",
    price: Faker::Number.between(from: 1.00, to: 15.00).round(2),
    restaurant_id: 1
)

MenuItem.create(
    name: "Double Quarter Pounder with Cheese",
    description: "Each Double Quarter Pounder with Cheese features two quarter pound* 100% fresh beef burger patties that are hot, deliciously juicy and cooked when you order. McDonald’s beef patties are seasoned with just a pinch of salt and pepper, sizzled on a flat iron grill, then topped with slivered onions, tangy pickles and two slices of melty cheese on a sesame seed bun. It contains no artificial flavors, preservatives or added colors from artificial sources.",
    img:"https://www.mcdonalds.com/is/image/content/dam/usa/nfl/nutrition/items/hero/desktop/t-mcdonalds-Double-Quarter-Pounder-with-Cheese.jpg?$Product_Desktop$",
    price: Faker::Number.between(from: 1.00, to: 15.00).round(2),
    restaurant_id: 1
)

MenuItem.create(
    name: "Double Quarter Pounder with Cheese Deluxe",
    description: "McDonald's Quarter Pounder® with Cheese Deluxe is a fresh take on a Quarter Pounder® classic burger. Crisp leaf lettuce and three Roma tomato slices top a ¼ lb. of 100% McDonald’s fresh beef that’s hot, deliciously juicy and cooked when you order. Seasoned with just a pinch of salt and pepper and sizzled on our flat iron grill. Layered with two slices of melty American cheese, creamy mayo, slivered onions and tangy pickles on a soft, fluffy sesame seed hamburger bun.",
    img:"https://www.mcdonalds.com/is/image/content/dam/usa/nfl/nutrition/items/hero/desktop/t-mcdonalds-qpc-deluxe-burger.jpg?$Product_Desktop$",
    price: Faker::Number.between(from: 1.00, to: 15.00).round(2),
    restaurant_id: 1
)

MenuItem.create(
    name: "McDouble",
    description: "The classic McDouble® burger stacks two 100% pure beef patties seasoned with just a pinch of salt and pepper. Wondering what the difference is between a McDouble® and a Double Cheeseburger? A slice of cheese! It’s topped with tangy pickles, chopped onions, ketchup, mustard and a melty slice of American cheese.",
    img:"https://www.mcdonalds.com/is/image/content/dam/usa/nfl/nutrition/items/hero/desktop/t-mcdonalds-McDouble.jpg?$Product_Desktop$",
    price: Faker::Number.between(from: 1.00, to: 15.00).round(2),
    restaurant_id: 1
)

MenuItem.create(
    name: "Quarter Pounder with Cheese Bacon",
    description: "Each Quarter Pounder® with Cheese Bacon burger features thick-cut applewood smoked bacon atop a ¼ lb. of 100% McDonald's fresh beef that's cooked when you order. It's a hot, deliciously juicy bacon cheeseburger, seasoned with just a pinch of salt and pepper and sizzled on our flat iron grill. Layered with two slices of melty American cheese, slivered onions and tangy pickles on a soft, fluffy sesame seed hamburger bun.",
    img:"https://www.mcdonalds.com/is/image/content/dam/usa/nfl/nutrition/items/hero/desktop/t-mcdonalds-qpc-bacon.jpg?$Product_Desktop$",
    price: Faker::Number.between(from: 1.00, to: 15.00).round(2),
    restaurant_id: 1
)

MenuItem.create(
    name: "Cheese Pizza",
    description: "Your favorite cheese pizza, with your choice of crust covered in classic marinara sauce and topped with gooey mozzarella cheese. It's anything but plain.",
    img:"https://www.pizzahut.com/assets/w/tile/thor/pizza_Cheese.png",
    price: Faker::Number.between(from: 1.00, to: 15.00).round(2),
    restaurant_id: 2
)

MenuItem.create(
    name: "Pepperoni Pizza",
    description: "You literally can't go wrong with pepperoni and mozzarella cheese. Classic for a reason.",
    img:"https://www.pizzahut.com/assets/w/tile/thor/pizza_Pepperoni.png",
    price: Faker::Number.between(from: 1.00, to: 15.00).round(2),
    restaurant_id: 2
)

MenuItem.create(
    name: "Meat Lover's Pizza",
    description: "Packed with pepperoni, Italian sausage, ham, bacon, seasoned pork and beef, this pizza is NOT messing around.",
    img:"https://www.pizzahut.com/assets/w/tile/thor/pizza_Meat_Lovers.png",
    price: Faker::Number.between(from: 1.00, to: 15.00).round(2),
    restaurant_id: 2
)

MenuItem.create(
    name: "Supreme Pizza",
    description: "This loaded pizza is the perfect choice for family dinner or a lunch with your crew. Includes pepperoni, seasoned pork, beef, mushrooms, green bell peppers and red onions.",
    img:"https://www.pizzahut.com/assets/w/tile/thor/pizza_Supreme.png",
    price: Faker::Number.between(from: 1.00, to: 15.00).round(2),
    restaurant_id: 2
)

MenuItem.create(
    name: "Veggie Lover's Pizza",
    description: "Pizza is officially a vegetable. This garden delight has all the fresh veggie toppings you love: mushrooms, red onions, green bell peppers, Roma tomatoes and black olives.",
    img:"https://www.pizzahut.com/assets/w/tile/thor/pizza_Veggie_Lovers.png",
    price: Faker::Number.between(from: 1.00, to: 15.00).round(2),
    restaurant_id: 2
)

MenuItem.create(
    name: "Supremo P’ZONE",
    description: "Italian Sausage, Green Pepper, Red Onion and melty cheese folded inside a pizza crust, finished with toasted parmesan and baked calzone style. Served with marinara for dipping.",
    img:"https://www.pizzahut.com/assets/w/tile/thor/pzone_supremo_producttile_175x203.png",
    price: Faker::Number.between(from: 1.00, to: 15.00).round(2),
    restaurant_id: 2
)

MenuItem.create(
    name: "Loaded Nacho Taco",
    description: Faker::Food.description,
    img:"https://www.tacobell.com/images/24537_loaded_nacho_taco_269x269.jpg",
    price: "1.00",
    restaurant_id: 3
)

MenuItem.create(
    name: "Soft Taco",
    description: Faker::Food.description,
    img:"https://www.tacobell.com/images/22110_soft_taco_269x269.jpg",
    price: "1.29",
    restaurant_id: 3
)

MenuItem.create(
    name: "Soft Taco Supreme",
    description: Faker::Food.description,
    img:"https://www.tacobell.com/images/22111_soft_taco_supreme_269x269.jpg",
    price: "1.79",
    restaurant_id: 3
)

MenuItem.create(
    name: "Crunchy Taco",
    description: Faker::Food.description,
    img:"https://www.tacobell.com/images/22100_crunchy_taco_269x269.jpg",
    price: "1.29",
    restaurant_id: 3
)

MenuItem.create(
    name: "Crunchy Taco Supreme",
    description: Faker::Food.description,
    img:"https://www.tacobell.com/images/22101_crunchy_taco_supreme_269x269.jpg",
    price: "1.79",
    restaurant_id: 3
)

MenuItem.create(
    name: "Bacon Club Chalupa",
    description: Faker::Food.description,
    img:"https://www.tacobell.com/images/22865_bacon_club_chalupa_269x269.jpg",
    price: "3.49",
    restaurant_id: 3
)

MenuItem.create(
    name: "The Original Orange Chicken",
    description: "Our signature dish. Crispy chicken wok-tossed in a sweet and spicy orange sauce.",
    img:"https://s3.amazonaws.com/PandaExpressWebsite/Responsive/img/food/thumbnails/grid_OrangeChicken.jpg",
    price: "5.49",
    restaurant_id: 4
)

MenuItem.create(
    name: "Honey Sesame Chicken Breast",
    description: "Honey Sesame Chicken Breast is made with thin, crispy strips of all-white meat chicken tossed with fresh-cut string beans, crisp yellow bell peppers in a sizzling hot wok with our new delicious honey sauce and topped off with sesame seeds.",
    img:"https://s3.amazonaws.com/PandaExpressWebsite/Responsive/img/food/thumbnails/grid_HoneySesame.jpg",
    price: "6.49",
    restaurant_id: 4
)

MenuItem.create(
    name: "Black Pepper Angus Steak",
    description: "Angus steak wok-seared with baby broccoli, onions, red bell peppers and mushrooms in a savory black pepper sauce.",
    img:"https://s3.amazonaws.com/PandaExpressWebsite/Responsive/img/food/thumbnails/grid_bpas.jpg",
    price: "7.49",
    restaurant_id: 4
)

MenuItem.create(
    name: "Broccoli Beef",
    description: "A classic favorite. Tender beef and fresh broccoli in a ginger soy sauce.",
    img:"https://s3.amazonaws.com/PandaExpressWebsite/Responsive/img/food/thumbnails/grid_BroccoliBeef.jpg",
    price: "6.49",
    restaurant_id: 4
)

MenuItem.create(
    name: "Honey Walnut Shrimp",
    description: "Large tempura-battered shrimp, wok-tossed in a honey sauce and topped with glazed walnuts.",
    img:"https://s3.amazonaws.com/PandaExpressWebsite/Responsive/img/food/thumbnails/grid_HoneyWalnutShrimp.jpg",
    price: "7.49",
    restaurant_id: 4
)

MenuItem.create(
    name: "Kung Pao Chicken",
    description: "A Szechwan-inspired dish with chicken, peanuts and vegetables, finished with chili peppers.",
    img:"https://s3.amazonaws.com/PandaExpressWebsite/Responsive/img/food/thumbnails/grid_KungPaoChicken.jpg",
    price: "5.49",
    restaurant_id: 4
)

Cart.create(
        note: "test cart",
        checkout: false,
        user: User.all.sample
    )

        3.times do
            CartItem.create(cart: Cart.first, menu_item: Restaurant.second.menu_items.sample)
        end




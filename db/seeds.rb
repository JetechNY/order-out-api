User.destroy_all
Restaurant.destroy_all

#users
sunjet = User.create(username: "SunJet", password: "123", email: "sunjet@sunjet.com")

#categories
# mcd = Restaurant.create(name: "McDonalds", user_id: sunjet.id)
# bk = Restaurant.create(name: "Burger King", user_id: sunjet.id)
# w = Restaurant.create(name: "Wendy's", user_id: sunjet.id)
# pops = Restaurant.create(name: "Popeye's", user_id: sunjet.id)

5.times do
    restaurant= Restaurant.create(
        name: Faker::Restaurant.name,
        rating: Faker::Restaurant.description,
        categories: Faker::Restaurant.type,
        image_url:"https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.eatthis.com%2Fbiggest-myths-about-mcdonalds-foods%2F&psig=AOvVaw1xSWkKxNcXkqjxqN5l26og&ust=1607789740800000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCOjpt9Wpxu0CFQAAAAAdAAAAABAD"
    )

end

10.times do
    MenuItem.create(
        name: Faker::Food.dish,
        description:Faker::Food.description,
        img:"https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.newfoodmagazine.com%2Farticle%2F94705%2Fmcdonalds-joins-the-plant-revolution%2F&psig=AOvVaw0i2Usf4BtkaCah9FryZFl2&ust=1607789321517000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCIiT742oxu0CFQAAAAAdAAAAABAD",
        price: rand(1..100)
    )
end

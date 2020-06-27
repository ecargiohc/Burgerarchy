# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all
Review.destroy_all

burgers = Restaurant.create([
    {
        title: "Fat Burger", 
        image_url: "https://www.freepngimg.com/thumb/junk_food/67355-king-hamburger-cheeseburger-veggie-fatburger-burger-milkshake.png"
    },
    {
        title: "Dick's",
        image_url: "https://d2dh8qummc3kh5.cloudfront.net/wp-content/uploads/2017/04/Dicks-Burger-1.png"
    },
    {
        title: "In-N-Out", 
        image_url: "http://res.cloudinary.com/culturemap-com/image/upload/c_limit,w_1200/v1500476046/photos/123081_original_landscape.png"
    },
    {
        title: "Shake Shack",
        image_url: "https://images.squarespace-cdn.com/content/v1/52efec3fe4b0db4ac4c286f7/1414904293396-H4R2KWXUWQWU8JNG4KML/ke17ZwdGBToddI8pDm48kCeo15q9fL6fSeZlOkTZ-CwUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKcQOfiCe_Y83cAWqcoznMZV6eVU1kFEEbT_hdvsBtyBW4VuXAkXu2WujdwVH47a6p9/Shake+Shack+Shackburger?format=1500w"
    }, 
    {
        title: "Roam Burger",
        image_url: "https://raster-static.postmates.com/?url=https%3A%2F%2Fitems-static.postmates.com%2Fuploads%2Fmedia%2Fa5dac8f4-e91b-44fe-9c89-94fd0e921812%2Foriginal.png%3Fv%3D63755958312&quality=85&w=320&h=0&mode=auto&format=&v=4"
    },
    {
        title: "Five Guys",
        image_url: "https://food.delivertoledo.com/custom/FiveGuysBackground.jpg"
    },
    {
        title: "Big Kahuna Burger",
        image_url: "https://pbs.twimg.com/media/EU5EOA0XkAAa5k-?format=png&name=small"
    }
])

reviews = Review.create([
    {
        title: "Fat and juicy", 
        description: "I paid extra for the bacon so it was juicy^2; 10/10 would recommend",
        score: 4.9,
        restaurant: burgers.first
    }, 
    {
        title: "Greasy delicious...", 
        description: "this is what dreams are made of, I caught a glimpse of heaven's gates and I can confirm that angels lubricate the pearly hinges with this very grease",
        score: 5,
        restaurant: burgers.first
    }
])
puts "SEEDS DONE"

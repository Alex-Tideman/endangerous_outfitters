
Destination.create(continent: "North America", description: "North American continent description.",
                   image_url: "south-america.jpg" )
Destination.create(continent: "South America", description: "South American continent description.",
                   image_url: "south-america.jpg" )
Destination.create(continent: "Europe", description: "European continent description.",
                   image_url: "europe.jpg" )
Destination.create(continent: "Asia", description: "Asian continent description.",
                   image_url: "asia.jpg" )
Destination.create(continent: "Africa", description: "African continent description.",
                   image_url: "africa.jpg" )
Destination.create(continent: "Oceania", description: "Oceanian continent description.",
                   image_url: "oceania.jpg" )

Activity.create(name: "Hiking", description: "We loven to do ze hikes.", image_url: "hiker.jpg" )
Activity.create(name: "Rafting", description: "Rafting Rulez!", image_url: "raft.jpg" )
Activity.create(name: "Scuba Diving", description: "Scuba Steve: Damn you!.", image_url: "scuba.jpg" )
Activity.create(name: "Climbing", description: "bloody hands.", image_url: "climbing.jpg" )
Activity.create(name: "Base Jumping", description: "WHOOO.", image_url: "basebase.jpg" )
Activity.create(name: "Hunting", description: "BANG.", image_url: "hunting.jpg" )

image1 = File.open('app/assets/images/canadian-rockies.jpg')
trip1 = Trip.new(destination_id: 1,activity_id: 1,name: "Canadian Rockies",
                 description: "Navigate the trails in Alberta and British Columbia.",
                 trip_cost: 10000.00, lat: 50.5210, long: -115.3903)
trip1.image = image1
trip1.save

image2 = File.open('app/assets/images/barrier.jpg')
trip2 = Trip.new(destination_id: 6,activity_id: 3,name: "Great Barrier Reef",
                 description: "Dive deep and experience on of the most colorful places on the planet.",
                 trip_cost: 21000.00, lat: -18.2861, long: 147.7000)
trip2.image = image2
trip2.save

image3 = File.open('app/assets/images/safari.jpg')
trip3 = Trip.new(destination_id: 5,activity_id: 6,name: "African Safari",
                 description: "Fulfill your dreams and capture the world's biggest game.",
                 trip_cost: 15800.00, lat: -18.4433, long: 26.5718)
trip3.image = image3
trip3.save

image4 = File.open('app/assets/images/base.jpg')
trip4 = Trip.new(destination_id: 3,activity_id: 5,name: "Swiss Base Jumpers",
                 description: "Take a gamble and dive off the cliffs of Lauterbrunnen.",
                 trip_cost: 22550.00, lat: 46.6000, long: 7.9000)
trip4.image = image4
trip4.save

image5 = File.open('app/assets/images/climbo.jpg')
trip5 = Trip.new(destination_id: 4,activity_id: 4,name: "Climbing in Pakistan",
                 description: "Summit some of the most beautiful and untouched mountains on Earth.",
                 trip_cost: 7850.00, lat: 35.6667, long: 76.1667 )
trip5.image = image5
trip5.save

image6 = File.open('app/assets/images/argentina.jpg')
trip6 = Trip.new(destination_id: 2,activity_id: 1,name: "Patagonia",
                 description: "Travel to the end of the Earth and experience the strange beauty of Patagonia.",
                 trip_cost: 36250.00, lat: -51.0000, long: -73.0000 )
trip6.image = image6
trip6.save

image7 = File.open('app/assets/images/river.jpg')
trip7 = Trip.new(destination_id: 1,activity_id: 2,name: "The Colorado Rapids",
                 description: "Check an item off your bucket list with this once in a lifetime trip down the Colorado River.",
                 trip_cost: 9550.00, lat: 39.6358, long: -106.3631)
trip7.image = image7
trip7.save

image8 = File.open('app/assets/images/basez.jpg')
trip8 = Trip.new(destination_id: 6,activity_id: 5,name: "Base Jumping the Fjords",
                 description: "Performing the most daring of stunts in the most isolated of places.",
                 trip_cost: 38900.00, lat: -44.0000, long: 167.0000 )
trip8.image = image8
trip8.save

image9 = File.open('app/assets/images/dolomites.jpg')
trip9 = Trip.new(destination_id: 3,activity_id: 1,name: "Huts in the Dolomites",
                 description: "Experience the old world culture of Northern Italy.",
                 trip_cost: 9400.00, lat: 46.1864, long: 11.8787)
trip9.image = image9
trip9.save

image10 = File.open('app/assets/images/yosemite.jpg')
trip10 = Trip.new(destination_id: 1,activity_id: 4,name: "Yosemite Granite",
                 description: "Experience the world's natural playground and climb the classic Yosemite granite domes.",
                 trip_cost: 21500.00, lat: 37.8499, long: -119.5677)
trip10.image = image10
trip10.save

image11 = File.open('app/assets/images/atlas.jpg')
trip11 = Trip.new(destination_id: 5,activity_id: 4,name: "Climbing the High Atlas",
                  description: "Spend your time in the thin air of the High Atlas Mountains in Northern Morocco.",
                  trip_cost: 17900.00, lat: 31.4300, long: -6.9300)
trip11.image = image11
trip11.save

image12 = File.open('app/assets/images/montana.jpg')
trip12 = Trip.new(destination_id: 1,activity_id: 6,name: "Hunting in Montana",
                  description: "Experience one of the most vibrant displays of wildlife in the continental United States.",
                  trip_cost: 33050.00, lat: 48.4100, long: -113.0000)
trip12.image = image12
trip12.save

image13 = File.open('app/assets/images/navua.jpg')
trip13 = Trip.new(destination_id: 6,activity_id: 2,name: "The Navua River",
                  description: "What's that? You didn't know that the tiny island of Fiji had such awesome river rafting? Well it does! Ride these rapids 65 kilometers to the south coast.",
                  trip_cost: 25850.00, lat: -18.1500, long: 178.1500)
trip13.image = image13
trip13.save

image14 = File.open('app/assets/images/positano.jpg')
trip14 = Trip.new(destination_id: 3,activity_id: 3,name: "Riviera Diving",
                  description: "See the fishes below the water, eat the fishes above the water in this Italian getaway.",
                  trip_cost: 21000.00, lat: 48.38, long: 14.29)
trip14.image = image14
trip14.save

image15 = File.open('app/assets/images/buffalo.jpg')
trip15 = Trip.new(destination_id: 6,activity_id: 6,name: "Outback Big Game",
                  description: "Go down under and take on some big game in the rugged Australian Outback.",
                  trip_cost: 49500.00, lat: -25.0000, long: 130.0000)
trip15.image = image15
trip15.save

image16 = File.open('app/assets/images/zambezi.jpg')
trip16 = Trip.new(destination_id: 5,activity_id: 2,name: "The Zambezi River",
                  description: "Rafting down Zambia's Zambezi River is a world class adventure. From the big warm water rapids, to the stunning white sandy beaches, this trip rates among some of the most exciting in the world.",
                  trip_cost: 37600.00, lat: -18.8333, long: 36.2833)
trip16.image = image16
trip16.save

image17 = File.open('app/assets/images/cancun.jpg')
trip17 = Trip.new(destination_id: 1,activity_id: 3,name: "Mexican Scuba Diving",
                  description: "Experience some of the world's bluest waters.",
                  trip_cost: 22700.00, lat: 21.2800, long: -89.6700)
trip17.image = image17
trip17.save

image18 = File.open('app/assets/images/tianmen.jpg')
trip18 = Trip.new(destination_id: 4, activity_id: 5, name: "Tianmen Mountains",
                  description: "The only thing more exhilarating than the climb to the top is the fall to the bottom in this remote Chinese valley.",
                  trip_cost: 28550.00, lat: 29.0527, long: 110.4830)
trip18.image = image18
trip18.save

image19 = File.open('app/assets/images/peru.jpg')
trip19 = Trip.new(destination_id: 2, activity_id: 4, name: "The Cordillera Blanca",
                  description: "Climb what some consider to be the most beautiful mountain range in the world.",
                  trip_cost: 11000.00, lat: -9.0717, long: -77.3632)
trip19.image = image19
trip19.save

image20 = File.open('app/assets/images/siberia.jpg')
trip20 = Trip.new(destination_id: 4, activity_id: 6, name: "The Siberian Wild",
                  description: "Pack your furs and bring your husky as you track the earth's largest Moose, Bear, and Deer.",
                  trip_cost: 135000.00, lat: 60.0000, long: 105.0000)
trip20.image = image20
trip20.save

image21 = File.open('app/assets/images/futalafu.jpg')
trip21 = Trip.new(destination_id: 2, activity_id: 2, name: "The Futalafu River",
                  description: "Travel to Patagonia and battle the toughest white-water rapids known to man.",
                  trip_cost: 9500.00, lat: -43.1000 , long: -71.5200 )
trip21.image = image21
trip21.save

User.create(username: "admin", password: "admin", full_name: "Mr. Admin", address: "Admin Street", role: 1)
User.create(username: "Alex", password: "123", full_name: "Alex Tideman", address: "12345 Marion St. Denver, CO")
User.create(username: "Adam", password: "123", full_name: "Adam Caron", address: "45 Lincoln St.")
User.create(username: "Max", password: "123", full_name: "Max Millington", address: "North Ave.")
User.create(username: "David", password: "123", full_name: "David Shim", address: "Bangkok Lane")

Review.create(name: "Arnold Schwarzenegger",
              content: "Ahftah trahvelig with Endangerous Ouhtfittahs, I hahve one thing to sahy...I'll be bahck.",
              occupation: "Movie Star, Action Hero, Governator, Terminator, Mr. Universe", image_url: "arnold.jpg")
Review.create(name: "Bruce Willis",
              content: "Yippee Ki Yay motherf****r, I would recommend Endangerous Outfitters to any action hero worth his salt.",
              occupation: "Movie Star, Action Hero", image_url: "bruce.jpg")
Review.create(name: "Hulk Hogan",
              content: "Endangerous Outfitters is running WILD brother! Hulkmania for life!",
              occupation: "Professional Wrestler, Reality Star", image_url: "hulk.jpg")
Review.create(name: "Sylvester Stallone",
              content: "Yo Adrian! This was the best trip we have every been on!",
              occupation: "Philadelphia Icon, Italian Stallion", image_url: "rambo.jpg")
Review.create(name: "Bruce Lee",
              content: "Endangerous Outfitters is so great that I came back from the dead just to go on one more trip.",
              occupation: "Ninja Master, Chinese Secret Agent", image_url: "lee.jpg")
Review.create(name: "The Rock",
              content: "Endangerous Outfitters smells what the Rock is cookin!",
              occupation: "Movie Star, Professional Wrestler", image_url: "rock.jpg")

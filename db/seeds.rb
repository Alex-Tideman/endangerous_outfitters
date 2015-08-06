
Destination.create(continent: "North America", description: "North American continent description.",
                    lat: 41.8369, long: -87.6847, image_url: "south-america.jpg" )
Destination.create(continent: "South America", description: "South American continent description.",
                    lat: -42.8369, long: -17.6847, image_url: "south-america.jpg" )
Destination.create(continent: "Europe", description: "European continent description.",
                    lat: 21.8369, long: -47.6847, image_url: "europe.jpg" )
Destination.create(continent: "Asia", description: "Asian continent description.",
                    lat: 31.8369, long: -77.6847, image_url: "asia.jpg" )
Destination.create(continent: "Africa", description: "African continent description.",
                    lat: 21.8369, long: -67.6847, image_url: "africa.jpg" )
Destination.create(continent: "Oceania", description: "Oceanian continent description.",
                    lat: -45.8369, long: -57.6847, image_url: "oceania.jpg" )

Activity.create(name: "Hiking", description: "We loven to do ze hikes.", image_url: "hiker.jpg" )
Activity.create(name: "Rafting", description: "Rafting Rulez!", image_url: "raft.jpg" )
Activity.create(name: "Scuba Diving", description: "Scuba Steve: Damn you!.", image_url: "scuba.jpg" )
Activity.create(name: "Climbing", description: "bloody hands.", image_url: "climbing.jpg" )
Activity.create(name: "Base Jumping", description: "WHOOO.", image_url: "basebase.jpg" )
Activity.create(name: "Hunting", description: "BANG.", image_url: "hunting.jpg" )

Trip.create(destination_id: 1, activity_id: 1, total_cost: 20000.00, trip_cost: 10000.00,
            name: "Canadian Rockies", image_url: "canadian-rockies.jpg",
            description: "Navigate the trails in Alberta and British Columbia.")
Trip.create(destination_id: 6, activity_id: 3, total_cost: 21000.00, trip_cost: 21000.00,
            name: "Great Barrier Reef", image_url: "barrier.jpg",
            description: "Dive deep and experience on of the most colorful places on the planet.")
Trip.create(destination_id: 5, activity_id: 6, total_cost: 100000.00, trip_cost: 200000.00,
            name: "African Safari", image_url: "safari.jpg",
            description: "Fulfill your dreams and capture the biggest game.")
Trip.create(destination_id: 3, activity_id: 5, total_cost: 20000.00, trip_cost: 15000.00,
            name: "Swiss Base Jumpers", image_url: "base.jpg",
            description: "Take a gamble and dive off the cliffs of Lauterbrunnen.")
Trip.create(destination_id: 4, activity_id: 4, total_cost: 10000.00, trip_cost: 8000.00,
            name: "Climbing in Pakistan", image_url: "climbo.jpg",
            description: "Summit some of the most beautiful and untouched mountains on Earth.")
Trip.create(destination_id: 2, activity_id: 1, total_cost: 400000.00, trip_cost: 15000.00,
            name: "Patagonia", image_url: "argentina.jpg",
            description: "Travel to the end of the Earth and experience the strange beauty of Patagonia.")
Trip.create(destination_id: 1, activity_id: 2, total_cost: 10000.00, trip_cost: 8000.00,
            name: "The Colorado Rapids", image_url: "river.jpg",
            description: "Check an item off your bucket list with this once in a lifetime trip down the Colorado River.")
Trip.create(destination_id: 6, activity_id: 5, total_cost: 30000.00, trip_cost: 25000.00,
            name: "Base Jumping the Fjords", image_url: "basez.jpg",
            description: "Performing the most daring of stunts in the most isolated of places.")
Trip.create(destination_id: 3, activity_id: 1, total_cost: 117000.00, trip_cost: 6000.00,
            name: "Huts in the Dolomites", image_url: "dolomites.jpg",
            description: "Experience the old world culture of Northern Italy.")
Trip.create(destination_id: 1, activity_id: 4, total_cost: 23000.00, trip_cost: 21000,
            name: "Yosemite Granite", image_url: "yosemite.jpg",
            description: "Experience the world's natural playground and climb the classic Yosemite granite domes.")
Trip.create(destination_id: 5, activity_id: 4, total_cost: 90500, trip_cost: 55000,
            name: "Climbing the High Atlas", image_url: "atlas.jpg",
            description: "Spend your time in the thin air of the High Atlas Mountains in Northern Morocco. ")
Trip.create(destination_id: 1, activity_id: 6, total_cost: 83000, trip_cost: 60000,
            name: "Hunting in Montana", image_url: "",
            description: "Experience one of the most vibrant displays of wildlife in the continental United States.")


Extra.create(name: "Monkey Banana-Eating Contest", description: "description", cost: 2000.00)
Extra.create(name: "Shark Slalom Surfing", description: "description", cost: 4000.00)
Extra.create(name: "Barometer Free Skydiving", description: "description", cost: 3000.00)
Extra.create(name: "Rhino Jousting", description: "description", cost: 8000.00)
Extra.create(name: "Giraffe Racing", description: "description", cost: 6000.00)

User.create(username: "admin", password: "admin", role: 1)
User.create(username: "Alex", password: "123")
User.create(username: "Adam", password: "123")


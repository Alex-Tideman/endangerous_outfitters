
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
Activity.create(name: "Climbing", description: "bloody hands.", image_url: "scuba.jpg" )
Activity.create(name: "Base Jumping", description: "WHOOO.", image_url: "scuba.jpg" )
Activity.create(name: "Hunting", description: "BANG.", image_url: "scuba.jpg" )

Trip.create(destination_id: 1, activity_id: 1, total_cost: 20000.00, trip_cost: 10000.00, name: "Canadian Rockies" )
Trip.create(destination_id: 6, activity_id: 3, total_cost: 21000.00, trip_cost: 21000.00, name: "Great Barrier Reef" )
Trip.create(destination_id: 5, activity_id: 6, total_cost: 100000.00, trip_cost: 200000.00, name: "African Safari" )
Trip.create(destination_id: 3, activity_id: 5, total_cost: 20000.00, trip_cost: 15000.00, name: "Swiss Base Jumpers" )
Trip.create(destination_id: 4, activity_id: 4, total_cost: 10000.00, trip_cost: 8000.00, name: "Himalayan Mountain Climbing"  )
Trip.create(destination_id: 2, activity_id: 1, total_cost: 400000.00, trip_cost: 15000.00, name: "Patagonia" )
Trip.create(destination_id: 1, activity_id: 2, total_cost: 10000.00, trip_cost: 8000.00, name: "Riding the Colorado Rapids" )
Trip.create(destination_id: 6, activity_id: 5, total_cost: 30000.00, trip_cost: 25000.00, name: "Base Jumping the Fjords" )
Trip.create(destination_id: 3, activity_id: 1, total_cost: 117000.00, trip_cost: 6000.00, name: "Hut to Hut in the Dolomites" )


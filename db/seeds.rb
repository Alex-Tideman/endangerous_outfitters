# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

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


Trip.create(destination_id: 1, activity_id: 1, name:"Hiking in the Rockies", total_cost: 9000.00, trip_cost: 9000.00 )
Trip.create(destination_id: 1, activity_id: 3, name: "Scuba Diving in Hawaii", total_cost: 21000.00, trip_cost: 21000.00 )
Trip.create(destination_id: 1, activity_id: 2, name: "Rafting in California", total_cost: 50000.00, trip_cost: 50000.00 )


Extra.create(name: "Monkey Banana-Eating Contest", description: "description", cost: 2000.00)
Extra.create(name: "Shark Slalom Surfing", description: "description", cost: 4000.00)
Extra.create(name: "Barometer Free Skydiving", description: "description", cost: 3000.00)
Extra.create(name: "Rhino Jousting", description: "description", cost: 8000.00)
Extra.create(name: "Giraffe Racing", description: "description", cost: 6000.00)

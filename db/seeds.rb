# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

data = [
  {
    pickup_address: "123 Main St, Anytown, USA",
    delivery_address: "456 Elm St, Anytown, USA",
    weight: 10.0,
    distance: 100.0,
    scheduled_time: DateTime.now,
    driver_name: "John Doe"
  },
  {
    pickup_address: "789 Oak Rd, Somewhere, USA",
    delivery_address: "321 Pine Ave, Elsewhere, USA",
    weight: 15.5,
    distance: 75.2,
    scheduled_time: DateTime.now + 2.days,
    driver_name: "Jane Smith"
  },
  {
    pickup_address: "555 Maple Dr, Uptown, USA",
    delivery_address: "999 Cedar Ln, Downtown, USA",
    weight: 8.3,
    distance: 125.7,
    scheduled_time: DateTime.now + 1.week,
    driver_name: "Bob Wilson"
  },
  {
    pickup_address: "742 Birch St, Westside, USA",
    delivery_address: "891 Willow Way, Eastside, USA", 
    weight: 12.4,
    distance: 82.3,
    scheduled_time: DateTime.now + 3.days,
    driver_name: "Sarah Johnson"
  },
  {
    pickup_address: "224 Spruce Ct, Northtown, USA",
    delivery_address: "667 Ash Rd, Southtown, USA",
    weight: 18.9,
    distance: 143.6, 
    scheduled_time: DateTime.now + 5.days,
    driver_name: "Mike Brown"
  },
  {
    pickup_address: "135 Dogwood Ln, Midtown, USA", 
    delivery_address: "468 Beech Blvd, Outskirts, USA",
    weight: 6.7,
    distance: 95.4,
    scheduled_time: DateTime.now + 8.days,
    driver_name: "Lisa Davis"
  },
  {
    pickup_address: "975 Cherry St, Downtown, USA",
    delivery_address: "246 Walnut Ave, Uptown, USA",
    weight: 22.1,
    distance: 67.8,
    scheduled_time: DateTime.now + 10.days,
    driver_name: "Tom Wilson"
  },
  {
    pickup_address: "357 Sycamore Dr, Heights, USA",
    delivery_address: "159 Poplar Rd, Valley, USA",
    weight: 14.3,
    distance: 156.2,
    scheduled_time: DateTime.now + 2.weeks,
    driver_name: "Amy Martinez"
  },
  {
    pickup_address: "753 Redwood Way, Coastal, USA",
    delivery_address: "951 Sequoia St, Inland, USA",
    weight: 9.6,
    distance: 178.9,
    scheduled_time: DateTime.now + 15.days,
    driver_name: "David Lee"
  },
  {
    pickup_address: "486 Magnolia Ave, Riverside, USA",
    delivery_address: "264 Cypress Ln, Lakeside, USA",
    weight: 16.8,
    distance: 88.5,
    scheduled_time: DateTime.now + 18.days,
    driver_name: "Karen White"
  },
  {
    pickup_address: "159 Palm Ct, Beachtown, USA",
    delivery_address: "753 Pine St, Mountainview, USA",
    weight: 11.2,
    distance: 134.7,
    scheduled_time: DateTime.now + 3.weeks,
    driver_name: "Steve Taylor"
  },
  {
    pickup_address: "852 Juniper Rd, Hillside, USA",
    delivery_address: "741 Elm Ave, Valleyview, USA",
    weight: 19.5,
    distance: 92.1,
    scheduled_time: DateTime.now + 25.days,
    driver_name: "Rachel Garcia"
  },
  {
    pickup_address: "369 Oakwood Dr, Forest, USA",
    delivery_address: "147 Birchwood Ln, Meadows, USA",
    weight: 7.8,
    distance: 167.3,
    scheduled_time: DateTime.now + 28.days,
    driver_name: "Chris Anderson"
  },
  {
    pickup_address: "258 Cedar St, Springs, USA",
    delivery_address: "963 Maple Ave, Falls, USA",
    weight: 13.6,
    distance: 145.8,
    scheduled_time: DateTime.now + 30.days,
    driver_name: "Jennifer Moore"
  },
  {
    pickup_address: "147 Aspen Way, Summit, USA",
    delivery_address: "369 Chestnut Rd, Basin, USA",
    weight: 20.4,
    distance: 112.9,
    scheduled_time: DateTime.now + 35.days,
    driver_name: "Kevin Thompson"
  }
]

data.each do |delivery|
  Delivery.create!(delivery)
end

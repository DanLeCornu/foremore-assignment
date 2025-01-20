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
  }
]

data.each do |delivery|
  Delivery.create!(delivery)
end

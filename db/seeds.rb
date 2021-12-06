puts "🌱 Seeding spices..."

List.create(title: "Home")
List.create(title: "School")
List.create(title: "Work")

Item.create(name: "laundry", list_id: 1)
Item.create(name: "set up React file for project", list_id: 2)
Item.create(name: "schedule zoom meeting for Edward", list_id: 3)

puts "✅ Done seeding!"

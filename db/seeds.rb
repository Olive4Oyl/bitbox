# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@sub1 = Subscription.create(level: "$10/month", description: "Starter Box")
@sub2 = Subscription.create(level: "$30/month", description: "Advanced Box")
@sub3 = Subscription.create(level: "$100/month", description: "Super Pro Box")
